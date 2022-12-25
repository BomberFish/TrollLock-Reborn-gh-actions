all: build package clean

PROJECT = TrollLock.xcodeproj
TARGET = TrollLock
CONFIGURATION = Release
SDK = iphoneos

build:
	cd TrollLock
	echo "building for SDK $(SDK)..."
	xcodebuild -project $(PROJECT) -target $(TARGET) -configuration $(CONFIGURATION) -sdk $(SDK) CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO clean build
	echo "build finished!"

package:
	rm -rf Payload
	mkdir Payload
	cp -r build/$(CONFIGURATION)-$(SDK)/$(TARGET).app Payload
	zip -r $(TARGET).ipa Payload

clean:
	rm -rf Payload
	rm -rf build

