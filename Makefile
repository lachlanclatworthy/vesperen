PROJECT=vesperen
BUILD_DIR=./build
SRC_DIR=./src
TEST_DIR=./test
BIN=$(BUILD_DIR)/$(PROJECT)

all: $(BIN)

run: all
	$(BIN)

$(BIN): $(SRC_DIR)/*.cpp $(SRC_DIR)/*.hpp
	g++ -Wpedantic -o $(BIN) $(SRC_DIR)/*.cpp
