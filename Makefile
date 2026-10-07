# Set general compiler flags
CFLAGS = -std=c89 -Wall -Wno-implicit-int
BUILD_DIR = build

# If no target is specified, the first target is executed
# Compile all examples
all: ansic-001 ansic-002

ansic-001: make-destination
	cc $(CFLAGS) ansic-001.c -o $(BUILD_DIR)/ansic-001

ansic-002: make-destination
	cc $(CFLAGS) ansic-002.c -o $(BUILD_DIR)/ansic-002

make-destination:
	mkdir -p $(BUILD_DIR)

# descriptions target doesn't produce any files. Always run.
.PHONY: clean descriptions
descriptions:
	$(info ansic-001: Hello World)
	$(info ansic-002: Fahrenheit-Celsius table)

clean:
	rm -rf $(BUILD_DIR)
