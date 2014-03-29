package FSM 
 
import Chisel._ 
import scala.collection.mutable.HashMap

class Accumulator extends Module {
  val io = new Bundle {
    val currentVal = UInt(OUTPUT)
    val incrementVal = UInt(INPUT)
    val incrementEn = Bool(INPUT)
  }
  val accumulator = Reg(init = UInt(0))
  when(io.incrementEn){
    accumulator := accumulator + io.incrementVal
  }
  io.currentVal := accumulator
}

class FSMDUT extends Module {
  val io = new Bundle {
    val in = new DecoupledIO(UInt(width = 32)).flip
    val out = new DecoupledIO(UInt(width = 32))  
    val state = UInt(OUTPUT)
  }
  val accumulator = Module(new Accumulator)
  val takeInput :: sendOutput :: Nil = Enum(UInt(), 2)
  val currentState = Reg(init = takeInput)
  io.state := currentState

  io.in.ready := Bool(false)
  io.out.valid := Bool(false)
  io.out.bits := UInt(0)
  accumulator.io.incrementVal := UInt(0)
  accumulator.io.incrementEn := Bool(false)
  when(currentState === takeInput){
    io.in.ready := Bool(true)
    when(io.in.valid){
      accumulator.io.incrementVal := io.in.bits
      accumulator.io.incrementEn := Bool(true)
      currentState := sendOutput
    }
  }.elsewhen(currentState === sendOutput){
    io.out.valid := Bool(true)
    io.out.bits := accumulator.io.currentVal
    when(io.out.ready){
      currentState := takeInput
    }
  }
}

class FSMTester extends Module {
  val io = new Bundle {
    val in = new DecoupledIO(UInt(width = 32)).flip
    val out = new DecoupledIO(UInt(width = 32))
    val passed = Bool(OUTPUT)
    val failed = Bool(OUTPUT)
  }
  val s0 :: s1 :: s2 :: sDone :: Nil = Enum(UInt(), 4)
  val senderState = Reg(init = s0)
  val senderStateNext = UInt()
  senderState := senderStateNext

  senderStateNext := senderState
  io.out.valid := Bool(false)
  io.out.bits := UInt(0)
  when(senderState === s0){
    io.out.valid := Bool(true)
    io.out.bits := UInt(1)
    when(io.out.ready){
      senderStateNext := s1
    }
  }.elsewhen(senderState === s1){
    io.out.valid := Bool(true)
    io.out.bits := UInt(2)
    when(io.out.ready){
      senderStateNext := s2
    }
  }.elsewhen(senderState === s2){
    io.out.valid := Bool(true)
    io.out.bits := UInt(3)
    when(io.out.ready){
      senderStateNext := sDone
    }
  }.elsewhen(senderState === sDone){
  }
  
  val r0 :: r1 :: r2 :: rPassed :: rFailed :: Nil = Enum(UInt(), 5)
  val receiverState = Reg(init = r0)
  val receiverStateNext = UInt()
  receiverState := receiverStateNext

  receiverStateNext := receiverState
  io.in.ready := Bool(false)
  io.passed := Bool(false)
  io.failed := Bool(false)
  when(receiverState === r0){
    io.in.ready := Bool(true)
    when(io.in.valid){
      when(io.in.bits === UInt(1)){
        receiverStateNext := r1
      }.otherwise{
        receiverStateNext := rFailed
      }
    }
  }.elsewhen(receiverState === r1){
    io.in.ready := Bool(true)
    when(io.in.valid){
      when(io.in.bits === UInt(3)){
        receiverStateNext := r2
      }.otherwise{
        receiverStateNext := rFailed
      }
    }
  }.elsewhen(receiverState === r2){
    io.in.ready := Bool(true)
    when(io.in.valid){
      when(io.in.bits === UInt(6)){
        receiverStateNext := rPassed
      }.otherwise{
        receiverStateNext := rFailed
      }
    }
  }.elsewhen(receiverState === rPassed){
    io.passed := Bool(true)
  }.elsewhen(receiverState === rFailed){
    io.failed := Bool(true)
  }
}



class FAME3FSMTester extends Module {
  val io = new Bundle {
    val in = new FameDecoupledIO(UInt(width = 32)).flip
    val out = new FameDecoupledIO(UInt(width = 32))
    val passed = Bool(OUTPUT)
    val failed = Bool(OUTPUT)
  }
  //host machine
  val fireTgtClk = Bool()
  fireTgtClk := io.in.host_valid && io.out.host_ready
  io.in.host_ready := fireTgtClk
  io.out.host_valid := fireTgtClk
  val counter = Reg(init = Bool(true))
  counter := !counter
  when(!counter){
    fireTgtClk := Bool(false)
  }
  //target machine
  val s0 :: s1 :: s2 :: sDone :: Nil = Enum(UInt(), 4)
  val senderState = Reg(init = s0)
  val senderStateNext = UInt()
  when(fireTgtClk){
    senderState := senderStateNext
  }

  senderStateNext := senderState
  io.out.target.valid := Bool(false)
  io.out.target.bits := UInt(0)
  when(senderState === s0){
    io.out.target.valid := Bool(true)
    io.out.target.bits := UInt(1)
    when(io.out.target.ready){
      senderStateNext := s1
    }
  }.elsewhen(senderState === s1){
    io.out.target.valid := Bool(true)
    io.out.target.bits := UInt(2)
    when(io.out.target.ready){
      senderStateNext := s2
    }
  }.elsewhen(senderState === s2){
    io.out.target.valid := Bool(true)
    io.out.target.bits := UInt(3)
    when(io.out.target.ready){
      senderStateNext := sDone
    }
  }.elsewhen(senderState === sDone){
  }
  
  val r0 :: r1 :: r2 :: rPassed :: rFailed :: Nil = Enum(UInt(), 5)
  val receiverState = Reg(init = r0)
  val receiverStateNext = UInt()
  when(fireTgtClk){
    receiverState := receiverStateNext
  }

  receiverStateNext := receiverState
  io.in.target.ready := Bool(false)
  io.passed := Bool(false)
  io.failed := Bool(false)
  when(receiverState === r0){
    io.in.target.ready := Bool(true)
    when(io.in.target.valid){
      when(io.in.target.bits === UInt(1)){
        receiverStateNext := r1
      }.otherwise{
        receiverStateNext := rFailed
      }
    }
  }.elsewhen(receiverState === r1){
    io.in.target.ready := Bool(true)
    when(io.in.target.valid){
      when(io.in.target.bits === UInt(3)){
        receiverStateNext := r2
      }.otherwise{
        receiverStateNext := rFailed
      }
    }
  }.elsewhen(receiverState === r2){
    io.in.target.ready := Bool(true)
    when(io.in.target.valid){
      when(io.in.target.bits === UInt(6)){
        receiverStateNext := rPassed
      }.otherwise{
        receiverStateNext := rFailed
      }
    }
  }.elsewhen(receiverState === rPassed){
    io.passed := Bool(true)
  }.elsewhen(receiverState === rFailed){
    io.failed := Bool(true)
  }
}

/*
class FSM extends Module {
  val io = new Bundle{
    val passed = Bool(OUTPUT)
    val failed = Bool(OUTPUT)
  }
  val DUT = Module(new Fame1Wrapper(new FSMDUT()))
  val Tester = Module(new FAME3FSMTester())

  val DUTInQueue = Module(new FameQueue(8)(UInt(width=32)))
  val DUTOutQueue = Module(new FameQueue(8)(UInt(width=32)))

  DUTInQueue.io.deq <> DUT.DecoupledIOs("in")
  DUTInQueue.io.enq <> Tester.io.out

  DUTOutQueue.io.enq <> DUT.DecoupledIOs("out")
  DUTOutQueue.io.deq <> Tester.io.in

  io.passed := Tester.io.passed
  io.failed := Tester.io.failed
}*/


class FSM extends Module {
  val io = new Bundle{
    val passed = Bool(OUTPUT)
    val failed = Bool(OUTPUT)
  }
  val DUT = Module(new Fame5Wrapper(2, new FSMDUT()))
  val Tester0 = Module(new FAME3FSMTester())
  val Tester1 = Module(new FAME3FSMTester())

  val DUTInQueue0 = Module(new FameQueue(8)(UInt(width=32)))
  val DUTInQueue1 = Module(new FameQueue(8)(UInt(width=32)))
  val DUTOutQueue0 = Module(new FameQueue(8)(UInt(width=32)))
  val DUTOutQueue1 = Module(new FameQueue(8)(UInt(width=32)))

  DUTInQueue0.io.deq <> DUT.DecoupledIOs(0)("in")
  DUTInQueue0.io.enq <> Tester0.io.out
  DUTOutQueue0.io.enq <> DUT.DecoupledIOs(0)("out")
  DUTOutQueue0.io.deq <> Tester0.io.in

  DUTInQueue1.io.deq <> DUT.DecoupledIOs(1)("in")
  DUTInQueue1.io.enq <> Tester1.io.out
  DUTOutQueue1.io.enq <> DUT.DecoupledIOs(1)("out")
  DUTOutQueue1.io.deq <> Tester1.io.in


  io.passed := Tester0.io.passed && Tester1.io.passed
  io.failed := Tester1.io.failed || Tester1.io.failed
}

class FSMTests(c: FSM) extends Tester(c) {
  var done = false
  while(!done){
    expect(c.io.failed, 0)
    //peek(c.Tester0.io.passed)
    //peek(c.Tester1.io.passed)
    if(peek(c.io.passed) == 1){
      done = true
    }
    step(1)
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
    } else {
      chiselMainTest(args, () => Module(new FSM())) {
        c => new FSMTests(c)
      }
    }
  }
}
