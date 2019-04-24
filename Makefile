build: gitdeps
	mkdir -p build
	cd build && cmake ../
	$(MAKE) -C build

gitdeps: build
	simple-deps --config dependencies.sd

clean:
	rm -rf build

.PHONY: build
