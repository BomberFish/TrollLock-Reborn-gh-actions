all:
	echo "setting permissions..."
	chmod a+x ./TrollLock/build.command
	echo "done!"
	echo "building..."
	./TrollLock/build.command
	echo "build finished!"

