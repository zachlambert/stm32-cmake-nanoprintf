BUILD_DIR = build/$(MCU)

.PHONY: build
build:
	mkdir -p $(BUILD_DIR)
	cmake -E chdir $(BUILD_DIR) cmake -DCMAKE_TOOLCHAIN_FILE=/opt/stm32/toolchain/$(MCU).cmake ../..
	cmake --build $(BUILD_DIR)

.PHONY: clean
clean:
	rm -r build

.PHONY: install
install:
	cmake --build $(BUILD_DIR) --target install
