all:
	echo "downloading ldid..."
	wget https://nightly.link/ProcursusTeam/ldid/workflows/build/master/ldid_linux_x86_64.zip
	unzip ldid_linux_x86_64.zip
	chmod a+x ldid
	PATH=$PWD:$PATH
	echo "building..."
	chmod a+x ./TrollLock/build.command
	./TrollLock/build.command
	echo "build finished!"

