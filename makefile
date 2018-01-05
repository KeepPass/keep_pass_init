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
