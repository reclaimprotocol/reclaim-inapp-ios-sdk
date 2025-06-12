_SWIFT_FORMAT_VERSION="508.0.1"

lint:
	pod repo lint ./ReclaimInAppSdk.podspec
prepare:
	./Scripts/prepare.sh
pod_publish:
	pod trunk push ReclaimInAppSdk.podspec --allow-warnings
fmt:
    # ensure version is 508.0.1
	@[[ "$(shell swift-format --version)" == "$(_SWIFT_FORMAT_VERSION)" ]] && echo "swift-format is compatible" || (echo "swift-format is not compatible. Ensure version is $(_SWIFT_FORMAT_VERSION)" && exit 1)
	swift-format format --recursive -i Sources/
