all:
	echo "downloading ldid..."
	wget https://nightly.link/ProcursusTeam/ldid/workflows/build/master/ldid_macosx_x86_64.zip
	echo "download finished!"
	echo "unzipping ldid..."
	unzip ldid_macosx_x86_64.zip
	echo "unzipping finished!"
	echo "doing some extra magic..."
	chmod a+x ldid
	cp ldid TrollLock/
	chmod a+x TrollLock/ldid
	chmod a+x ./TrollLock/build.command
	echo "done!"
	echo "building..."
	./TrollLock/build.command
	echo "build finished!"

