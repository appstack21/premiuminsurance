rm -rf output
mkdir output

PROJECT_NAME="PremiumInsurance"
# set framework name or read it from project by this variable
FRAMEWORK_NAME="PremiumInsurance"

#xcframework path
FRAMEWORK_PATH="${FRAMEWORK_NAME}.xcframework"

# set path for iOS simulator archive
SIMULATOR_ARCHIVE_PATH="${PROJECT_NAME}-sim.xcarchive"
# set path for iOS device archive
IOS_DEVICE_ARCHIVE_PATH="${PROJECT_NAME}-iOS.xcarchive"

echo "Archiving for iOS Simulator"
xcodebuild archive \
-scheme ${FRAMEWORK_NAME} \
-destination "generic/platform=iOS Simulator" \
-archivePath "${SIMULATOR_ARCHIVE_PATH}" \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

echo "Archiving for iOS Device"
xcodebuild archive \
-scheme ${FRAMEWORK_NAME} \
-destination "generic/platform=iOS" \
-archivePath "${IOS_DEVICE_ARCHIVE_PATH}" \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

#Sample iOS - Simulator
#xcodebuild archive \
#-scheme TeamXSDK \
#-destination "generic/platform=iOS Simulator" \
#-archivePath output/TeamXSDK-Sim \
#SKIP_INSTALL=NO \
#BUILD_LIBRARY_FOR_DISTRIBUTION=YES

#Sample iOS
#xcodebuild archive \
#-scheme TeamXSDK \
#-destination "generic/platform=iOS" \
#-archivePath output/TeamXSDK \
#SKIP_INSTALL=NO \
#BUILD_LIBRARY_FOR_DISTRIBUTION=YES


#Creating XCFramework
echo "Creating XCFramework"
xcodebuild -create-xcframework \
-framework ${SIMULATOR_ARCHIVE_PATH}/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework \
-framework ${IOS_DEVICE_ARCHIVE_PATH}/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework \
-output "${FRAMEWORK_PATH}"

rm -rf "${SIMULATOR_ARCHIVE_PATH}"
rm -rf "${IOS_DEVICE_ARCHIVE_PATH}"
open "output"
