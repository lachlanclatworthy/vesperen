PROJECT := vesperen
CXX := g++
CXXFLAGS := -O2 -Wpedantic

BUILD_DIR := ./build
SRC_DIR := ./src
TEST_DIR := ./test
BIN := $(BUILD_DIR)/$(PROJECT)

all: $(BIN)

run: all
	$(BIN)

$(BIN): $(wildcard $(SRC_DIR)/*.cpp $(SRC_DIR)/*.c $(SRC_DIR)/*.hpp  $(SRC_DIR)/*.h)
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	rm $(BIN)

.PHONY: all clean run
