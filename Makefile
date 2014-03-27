run:
	sbt "project cpu" "run -ctest --autoPipe --targetDir emulator"
	vcd2vpd Hello.vcd Hello.vcd.vpd
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
