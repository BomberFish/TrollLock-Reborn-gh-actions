all: build package clean

build:
	echo "building..."
	xcodebuild -project ./TrollLock/TrollLock.xcodeproj -target TrollLock -configuration Release -sdk iphoneos CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO clean build
	echo "build finished!"

package:
	rm -rf Payload
	mkdir Payload
	cp -r build/$(CONFIGURATION)-$(SDK)/$(TARGET).app Payload
	zip -r $(TARGET).ipa Payload

clean:
	rm -rf Payload
	rm -rf build

