program: 
	@git clone https://github.com/KeepPass/keep_pass_store.git Store
	@mv Store/KeepPass.jar KeepPass.jar
	echo "Got KeepPass.jar"
	@git clone https://github.com/KeepPass/keep_pass_get.git Get
	@mv Get/GetPass.jar GetPass.jar
	echo "Got GetPass.jar"
	@git clone https://github.com/KeepPass/keep_pass_binaries.git Bin
	@mv Bin/keep.cpp keep.cpp
	@mv Bin/get.cpp get.cpp
	echo "Got the binaries"
	@g++ keep.cpp -o keep
	@g++ get.cpp -o get
	echo "Compiled c++ files"
	@cd ..
	@rm -R Bin Get Store
	#Lets clean up here
	echo "Cleaning up..."
	@rm -R keep.cpp
	@rm -R get.cpp
clean:
	@rm -R keep get build.bat build.sh GetPass.jar KeepPass.jar README.md

restore-bin:
	@git clone https://github.com/KeepPass/keep_pass_binaries.git Bin
	echo "Restored binaries"

update: 
	@git clone https://github.com/KeepPass/keep_pass_store.git Store
	@mv Store/KeepPass.jar KeepPass.jar
	echo "Got KeepPass.jar"
	@git clone https://github.com/KeepPass/keep_pass_get.git Get
	@mv Get/GetPass.jar GetPass.jar
	echo "Got GetPass.jar"
	@git clone https://github.com/KeepPass/keep_pass_binaries.git Bin
	@mv Bin/keep.cpp keep.cpp
	@mv Bin/get.cpp get.cpp
	echo "Got the binaries"
	@g++ keep.cpp -o keep
	@g++ get.cpp -o get
	echo "Compiled c++ files"
	@cd ..
	@rm -R Bin Get Store
	#Lets clean up here
	echo "Cleaning up..."
	@rm -R keep.cpp
	@rm -R get.cpp
help:
	echo "KeepPass Help:"
	echo "make: Downloads & builds from source"
	echo "make clean: Removes everything except makefile"
	echo "make restore-bin: Restores binary files as .cpp files"
	echo "make update: Updates from scratch"
	echo "make help: Displays this menu"
