lint:
	pod repo lint ./ReclaimInAppSdk.podspec
prepare:
	./Scripts/prepare.sh
pod_publish:
	pod trunk push ReclaimInAppSdk.podspec --allow-warnings
