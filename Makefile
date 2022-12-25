all:
	echo "downloading ldid..."
	wget https://nightly.link/ProcursusTeam/ldid/workflows/build/master/ldid_linux_x86_64.zip
	echo "download finished!"
	echo "unzipping ldid..."
	unzip ldid_linux_x86_64.zip
	echo "unzipping finished!"
	echo "doing some extra magic..."
	chmod a+x ldid
	chmod a+x ./TrollLock/build.command
	PATH=$PWD:$PATH
	echo "done!"
	echo "building..."
	./TrollLock/build.command
	echo "build finished!"

