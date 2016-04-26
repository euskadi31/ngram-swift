
lint:
	@swiftlint

build: lint
	@echo "Build..."
	@swift build

test: build
	@swift test

clean:
	@swift build --clean

travis:
	@swift build
	@swift test
