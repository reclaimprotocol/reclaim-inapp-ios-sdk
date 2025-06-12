lint:
	pod repo lint ./ReclaimInAppSdk.podspec
prepare:
	./Scripts/prepare.sh
pod_publish:
	pod trunk push ReclaimInAppSdk.podspec --allow-warnings
fmt:
    # ensure version is 508.0.1
	swift-format format --recursive -i Sources/
