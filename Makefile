run:
	sbt "project fsm" "run --backend Chisel.Fame5CppBackend --genHarness --compile --test --vcd --debug --targetDir emulator"
	vcd2vpd FSM.vcd FSM.vcd.vpd
clean:
	sbt "project chisel" clean
	sbt "project cpu" clean
	rm -f emulator/*.cpp
	rm -f emulator/*.h
	rm -f emulator/*.o
	rm -rf target
	rm -f emulator/Hello
	rm *.vpd
	rm *.vcd
