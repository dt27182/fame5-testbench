package FSM 
 
import Chisel._ 
import scala.collection.mutable.HashMap
/*
class FSM extends Module {
  val io = new Bundle { 
    val read_data = UInt(OUTPUT, 4)
    val read_addr = Bits(INPUT, 4)
  }
  val a = Reg(init=Bits(3))
  
  val b = Bits()
  b := a + io.read_addr
  
  val c = Bits()
  c := b + Bits(3)
  
  val d = Bits()
  d := c - Bits(3)

  val e = Bits()
  e := d + Bits(4)
  
  val f = Bits()
  f := e
  
  a := f
  io.read_data := e
  
  Module.pipelineComponent = this
  Module.setStageNum(4)
  

}*/

/*
class FSM extends Module {
  val io = new Bundle { 
    val read_data = UInt(OUTPUT, 4)
    val read_addr = Bits(INPUT, 4)
  }
  val a = Reg(init=Bits(3))
  
  val b = Bits()
  b := a + io.read_addr
  
  val c = Bits()
  c := a - io.read_addr
  
  val d = Bits()
  d := b + c

  val e = Bits()
  e := b - c
  
  val f = Bits()
  f := d + e
  
  val g = Bits()
  g := d - e

  val h = Bits()
  h := f + g

  val i = Bits()
  i := f - g
  
  a := h
  io.read_data := i
  
  Module.pipelineComponent = this
  Module.setStageNum(4)
  

}*/


class FSM extends Module {
  val io = new Bundle { 
    val read_data = new DecoupledIO(UInt(width = 32))
    val read_addr = new DecoupledIO(Bits(width = 4)).flip()
  }

  val pc_reg = Reg(init = UInt(0,4))
  val pc_spec = UInt()
  pc_spec := pc_reg + UInt(1)
  val pc_plus4 = UInt()
  pc_plus4 := pc_reg + UInt(1)
  
  val imem = Module(new TICache())
  imem.io.req.valid := Bool(true)
  val imem_addr = Bits()
  imem_addr := pc_reg
  imem.io.req.bits := imem_addr
  
  val inst = Bits()
  inst := imem.io.resp

  val rs1 = Bits()
  val rs2 = Bits()
  val rd = Bits()
  val op = Bits()
  val imm = Bits()
  rs1 := inst(11,8)
  rs2 := inst(7,4)
  rd := inst(3,0)
  op := inst(14,12)
  imm := Cat(Bits(0,15), inst(31,15))
  
  val isJmp = Bool()
  isJmp := op === UInt(6)
  val isNotJmp = Bool()
  isNotJmp := ~(op === UInt(6))
  when(isNotJmp){
    pc_reg := pc_plus4
  }
  val jmpTarget = Bits()
  jmpTarget := imm(3,0)
  when(isJmp){
    pc_reg := jmpTarget
  }
  
  //val regfile = Module(new TransactionMem(16, 3, 3, Array(0,1,2), 2, 1, Array(0, 0), seqRead = true)(Bits(width = 32)))
  val regfile = Module(new TransactionMem(16, 3, 3, Array(0,1,2), 2, 1, Array(0, 0))(Bits(width = 32)))


  val rs1_data = UInt()
  val rs2_data = UInt()
  rs1_data := regfile.io.reads(0).dat
  regfile.io.reads(0).adr := rs1
  regfile.io.reads(0).is := Bool(true)
  rs2_data := regfile.io.reads(1).dat
  regfile.io.reads(1).adr := rs2
  regfile.io.reads(1).is := Bool(true)
  io.read_data.bits := regfile.io.reads(2).dat
  regfile.io.reads(2).adr := io.read_addr.bits
  regfile.io.reads(2).is := Bool(true)

  io.read_addr.ready := Bool(true)
  io.read_data.valid := io.read_addr.valid

  val operand1 = UInt()
  operand1 := rs1_data
  when(op === UInt(4)){
    operand1 := UInt(0)
  }
  val operand2 = UInt()
  operand2 := rs2_data
  when(op > UInt(1)){
    operand2 := imm
  }
  
  val adder_out = UInt()
  val subtract_out = UInt()
  adder_out := operand1 + operand2
  subtract_out := operand1 - operand2
  
  val adder_sel = Bool()
  val subtract_sel = Bool()
  adder_sel := (op === UInt(0)) || (op === UInt(2) || (op === UInt(4)))
  subtract_sel := (op === UInt(1)) || (op === UInt(3))

  regfile.io.writes(0).is := adder_sel
  regfile.io.writes(0).adr := rd
  regfile.io.writes(0).dat := adder_out
  regfile.io.writes(1).is := subtract_sel
  regfile.io.writes(1).adr := rd
  regfile.io.writes(1).dat := subtract_out



  //automatic pipelining specification
  //limit automatic pipelining to this Component(the dpath)
  Module.pipelineComponents += this
  
  //this.setRegReadStage(pc_reg.asInstanceOf[Data].comp.asInstanceOf[Reg], 0)
  //this.setRegWriteStage(pc_reg.asInstanceOf[Data].comp.asInstanceOf[Reg], 2)
  
  this.setStageNum(4)

  this.setDecoupledIOStage(io.read_addr.asInstanceOf[DecoupledIO[Data]], 1)
  this.setDecoupledIOStage(io.read_data.asInstanceOf[DecoupledIO[Data]], 2)

  this.setRegWriteStage(pc_reg.asInstanceOf[Data].comp.asInstanceOf[Reg], 1)
  this.setStage(pc_spec, 0)
  this.speculate(pc_reg.comp.asInstanceOf[Reg], pc_spec)
  
  //this.setTmemReadStage(regfile, 1)
  this.addForwardedMemReadPort(regfile, regfile.io.reads(0))
  this.addForwardedMemReadPort(regfile, regfile.io.reads(1))
}

/*
class PC_Wrapper(top: Module) extends Module {
  val io = new Bundle {
    val pc = UInt(width = 5).asOutput
    val isNotJmp = Bool().asInput
    val isJmp = Bool().asInput
    val jmpTarget = UInt(width = 5).asInput
  }
  val pc_reg = Reg(init = UInt(0, 4))
  val pc_plus4 = UInt()
  pc_plus4 := pc_reg + UInt(1)
  
  val pc_spec = UInt()
  pc_spec := pc_reg + UInt(1)
  
  io.pc := pc_reg
  when(io.isNotJmp){
    pc_reg := pc_plus4
  }
  when(io.isJmp){
    pc_reg := io.jmpTarget
  }
  //top.setRegReadStage(pc_reg.asInstanceOf[Data].comp.asInstanceOf[Reg], 0)
  top.setRegWriteStage(pc_reg.asInstanceOf[Data].comp.asInstanceOf[Reg], 1)
  top.speculate(pc_reg.comp.asInstanceOf[Reg], pc_spec)
  top.setStage(pc_spec, 0)
}

class RegFile_Wrapper(top: Module) extends Module {
  val io = new Bundle{
    val read_addr0 = UInt(width = 4).asInput
    val read_addr1 = UInt(width = 4).asInput
    val read_addr2 = UInt(width = 4).asInput
    val read_data0 = UInt(width = 32).asOutput
    val read_data1 = UInt(width = 32).asOutput
    val read_data2 = UInt(width = 32).asOutput
    val write_addr0 = UInt(width = 4).asInput
    val write_addr1 = UInt(width = 4).asInput
    val write_data0 = UInt(width = 32).asInput
    val write_data1 = UInt(width = 32).asInput
    val write_en0 = Bool().asInput
    val write_en1 = Bool().asInput
  }
  
  //val regfile = Module(new TransactionMem(16, 3, 3, Array(0,1,2), 2, 1, Array(0, 0), seqRead = true)(Bits(width = 32)))
  val regfile = Module(new TransactionMem(16, 3, 3, Array(0,1,2), 2, 1, Array(0, 0))(Bits(width = 32)))

  val rs1_data = UInt()
  val rs2_data = UInt()
  
  io.read_data0 := regfile.io.reads(0).dat
  regfile.io.reads(0).adr := io.read_addr0
  regfile.io.reads(0).is := Bool(true)

  io.read_data1 := regfile.io.reads(1).dat
  regfile.io.reads(1).adr := io.read_addr1
  regfile.io.reads(1).is := Bool(true)

  io.read_data2 := regfile.io.reads(2).dat
  regfile.io.reads(2).adr := io.read_addr2
  regfile.io.reads(2).is := Bool(true)

  regfile.io.writes(0).is := io.write_en0
  regfile.io.writes(0).adr := io.write_addr0
  regfile.io.writes(0).dat := io.write_data0

  regfile.io.writes(1).is := io.write_en1
  regfile.io.writes(1).adr := io.write_addr1
  regfile.io.writes(1).dat := io.write_data1

  top.setTmemReadStage(regfile, 1)
  //top.addForwardedMemReadPort(regfile, regfile.io.reads(0))
  //top.addForwardedMemReadPort(regfile, regfile.io.reads(1))

}


class FSM extends Module {
  val io = new Bundle { 
    val read_data = new DecoupledIO(UInt(width = 32))
    val read_addr = new DecoupledIO(Bits(width = 4)).flip()
  }

  val pc_wrapper = Module(new PC_Wrapper(this))

  val imem = Module(new TICache())
  imem.io.req.valid := Bool(true)
  val imem_addr = Bits()
  imem_addr := pc_wrapper.io.pc
  imem.io.req.bits := imem_addr
  
  val inst = Bits()
  inst := imem.io.resp

  val rs1 = Bits()
  val rs2 = Bits()
  val rd = Bits()
  val op = Bits()
  val imm = Bits()
  rs1 := inst(11,8)
  rs2 := inst(7,4)
  rd := inst(3,0)
  op := inst(14,12)
  imm := Cat(Bits(0,15), inst(31,15))
  
  val isJmp = Bool()
  isJmp := op === UInt(6)
  val isNotJmp = Bool()
  isNotJmp := ~(op === UInt(6))
  val jmpTarget = UInt()
  jmpTarget := imm(3,0)
  pc_wrapper.io.isNotJmp := isNotJmp
  pc_wrapper.io.isJmp := isJmp
  pc_wrapper.io.jmpTarget := jmpTarget
  
  val rd_exe = Bits()
  rd_exe := rd
  val rd_mem = Bits()
  rd_mem := rd_exe
  
  val regfile = Module(new RegFile_Wrapper(this))
  val rs1_data = UInt()
  val rs2_data = UInt()
  regfile.io.read_addr0 := rs1
  regfile.io.read_addr1 := rs2
  regfile.io.read_addr2 := io.read_addr.bits
  rs1_data := regfile.io.read_data0
  rs2_data := regfile.io.read_data1
  io.read_data.bits := regfile.io.read_data2
  io.read_addr.ready := Bool(true)
  //io.read_data.valid := Bool(true)
  io.read_data.valid := io.read_addr.valid

  val operand1 = UInt()
  operand1 := rs1_data
  when(op === UInt(4)){
    operand1 := UInt(0)
  }
  val operand2 = UInt()
  operand2 := rs2_data
  when(op > UInt(1)){
    operand2 := imm
  }
  
  val operand1_exe = UInt()
  val operand2_exe = UInt()
  operand1_exe := operand1
  operand2_exe := operand2
  
  val adder_out = UInt()
  val subtract_out = UInt()
  adder_out := operand1_exe + operand2_exe
  subtract_out := operand1_exe - operand2_exe
  val adder_out_exe = UInt()
  val subtract_out_exe = UInt()
  adder_out_exe := adder_out
  subtract_out_exe := subtract_out
  val adder_out_mem = UInt()
  val subtract_out_mem = UInt()
  adder_out_mem := adder_out_exe
  subtract_out_mem := subtract_out_exe
  
  val adder_sel = Bool()
  val subtract_sel = Bool()
  adder_sel := (op === UInt(0)) || (op === UInt(2) || (op === UInt(4)))
  subtract_sel := (op === UInt(1)) || (op === UInt(3))

  val adder_sel_exe = Bool()
  val subtract_sel_exe = Bool()
  adder_sel_exe := adder_sel
  subtract_sel_exe := subtract_sel
  val adder_sel_mem = Bool()
  val subtract_sel_mem = Bool()
  adder_sel_mem := adder_sel_exe
  subtract_sel_mem := subtract_sel_exe
  
  regfile.io.write_addr0 := rd_mem
  regfile.io.write_addr1 := rd_mem
  regfile.io.write_data0 := adder_out_mem
  regfile.io.write_data1 := subtract_out_mem
  regfile.io.write_en0 := adder_sel_mem
  regfile.io.write_en1 := subtract_sel_mem
  
  //automatic pipelining specification
  //limit automatic pipelining to this Component(the dpath)
  Module.pipelineComponents += this
  
  this.setDecoupledIOStage(io.read_addr.asInstanceOf[DecoupledIO[Data]], 1)
  this.setDecoupledIOStage(io.read_data.asInstanceOf[DecoupledIO[Data]], 2)

  this.setStageNum(4)

}*/

class FSMTests(c: FSM) extends Tester(c, Array(c.io)) {
  defTests {
    val vars = new HashMap[Node, Node]()
    val ovars = new HashMap[Node, Node]()
    var all_correct = true
    
    
    //wait 10 non stall cycles for the processor to finish executing the test program   
    var count = 0
    while(count < 11){
      vars(c.io.read_addr.bits) = UInt(15)
      vars(c.io.read_addr.valid) = Bool(false)
      //vars(c.io.read_data.ready) = Bool(true)
      all_correct = step(vars, ovars) && all_correct
      if(ovars(c.io.read_addr.ready).name == "0x1"){
        count = count + 1
      }
    }
    
    //read out expected register values
    var inputDone = false
    var inputState = 0
    var outputDone = false
    var outputState = 0

    val inputAddrs = Array(0, 1, 2, 3, 4)
    val outputData = Array(2, 3, 5, 3, 3)
    
    def setInputs() = {
      vars(c.io.read_addr.bits) = UInt(inputAddrs(inputState))
      vars(c.io.read_addr.valid) = Bool(true)
      //vars(c.io.read_data.ready) = Bool(true)
    }
    def updateInputState() = {
      if(ovars(c.io.read_addr.ready).name == "0x1"){
        inputState = inputState + 1
      }
      if(inputState >= inputAddrs.length){
        inputDone = true
      }
    }
    def updateOutputState() = {
      if(ovars(c.io.read_data.valid).name == "0x1"){
        if(ovars(c.io.read_data.bits).name == "0x" + outputData(outputState)){
          outputState = outputState + 1
        } else {
          println("test #" + outputState + " failed")
          println("expected " + "0x" + outputData(outputState))
          println("received " + ovars(c.io.read_data.bits))
          Predef.assert(false)
        }
      }
      if(outputState >= outputData.length){
        outputDone = true
      }
    }
    
    while(!inputDone && !outputDone){
      setInputs()
      step(vars,ovars)
      updateInputState()
      updateOutputState()
    }
    
    true
  }
}

object FSM {
  def main(args: Array[String]): Unit = {
    if(args(0) == "-ctest"){
      chiselMainTest(args.slice(1, args.length) ++ Array("--backend", "c", "--genHarness", "--compile", "--test", "--vcd", "--debug"), () => Module(new FSM())) {
        c => new FSMTests(c) }
    } else if(args(0) == "-vbuild"){
      chiselMain(args.slice(1,args.length) ++ Array("--backend", "v"), () => Module(new FSM()))
    } else if(args(0) == "-backannotation"){
      chiselMain(args.slice(1,args.length) ++ Array("--backend", "MyBackend.MyBackend"), () => Module(new FSM()))
    }
  }
}
