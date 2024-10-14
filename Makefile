PROJECT := vesperen
BUILD_DIR := ./build
SRC_DIR := ./src
TEST_DIR := ./test
BIN := $(BUILD_DIR)/$(PROJECT)

all: $(BIN)

run: all
	$(BIN)

$(BIN): $(wildcard $(SRC_DIR)/*.cpp $(SRC_DIR)/*.c $(SRC_DIR)/*.hpp  $(SRC_DIR)/*.h)
	g++ -Wpedantic -o $@ $^

clean:
	rm $(BIN)
