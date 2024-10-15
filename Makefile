PROJECT := vesperen
CXX := g++
CXXFLAGS := -O2 -Wpedantic

BUILD_DIR := ./build
SRC_DIR := ./src
TEST_DIR := ./test
BIN := ./$(BUILD_DIR)/$(PROJECT)

LIB_DIR := ./libs
BOOST_DIR := $(LIB_DIR)/boost
PYTHON_ENV_DIR := $(LIB_DIR)/python

all: $(BUILD_DIR) $(BIN)

run: all
	$(BIN)

$(BIN): $(wildcard $(SRC_DIR)/*.cpp $(SRC_DIR)/*.c $(SRC_DIR)/*.hpp  $(SRC_DIR)/*.h)
	$(CXX) $(CXXFLAGS) -I$(LIB_DIR) -o $@ $^

# python module creation

# TODO Need to account for creation of vesperen.py here as well...
$(BUILD_DIR)/vesperen_wrap.cpp: $(SRC_DIR)/vesperen.cpp $(SRC_DIR)/vesperen.i
	swig -python -c++ -o $@ $(SRC_DIR)/vesperen.i

# There's definitely a way to consolidate these, I'm just dense
$(BUILD_DIR)/callout.o: $(SRC_DIR)/callout.cpp
	$(CXX) $(CXXFLAGS) -I$(LIB_DIR) -c -fpic $< -o $@

$(BUILD_DIR)/vesperen.o: $(SRC_DIR)/vesperen.cpp
	$(CXX) $(CXXFLAGS) -c -fpic $< -o $@

$(BUILD_DIR)/vesperen_wrap.o: $(BUILD_DIR)/vesperen_wrap.cpp
	$(CXX) $(CXXFLAGS) -c -fpic $< -I$(PYTHON_ENV_DIR) -o $@

$(BUILD_DIR)/_vesperen.so: $(BUILD_DIR)/vesperen.o $(BUILD_DIR)/vesperen_wrap.o $(BUILD_DIR)/callout.o
	$(CXX) $(CXXFLAGS) -shared $^ -o $@

python-swig: $(BUILD_DIR)/_vesperen.so $(BUILD_DIR)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -r $(BUILD_DIR)


.PHONY: all clean run python-swig
