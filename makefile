program: 
	git clone https://github.com/KeepPass/keep_pass_store.git Store
	mv Store/KeepPass.jar KeepPass.jar
	git clone https://github.com/KeepPass/keep_pass_get.git Get
	mv Get/GetPass.jar GetPass.jar
	git clone https://github.com/KeepPass/keep_pass_binaries.git Bin
	mv Bin/keep.cpp keep.cpp
	mv Bin/get.cpp get.cpp
	g++ keep.cpp -o keep
	g++ get.cpp -o get
	cd ..
	rm -R Bin Get Store
	#Lets clean up here
	rm -R keep.cpp
	rm -R get.cpp