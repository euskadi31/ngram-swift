
build:
	@swift build

test: build
	@swift test

clean:
	@swift build --clean
