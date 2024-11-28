BUILD_FILES=babashka-1.3.191-macos-aarch64.tar.gz target target/pod-ilmoraunio-conftest-clj.jar pod-ilmoraunio-conftest-clj

pod-ilmoraunio-conftest/pod-ilmoraunio-conftest:
	@make -C pod-ilmoraunio-conftest

build-macos-aarch64: pod-ilmoraunio-conftest/pod-ilmoraunio-conftest
	./scripts/build_macos.sh

clean:
	rm -rf $(BUILD_FILES)
