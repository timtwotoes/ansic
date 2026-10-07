# Set general compiler flags
CFLAGS = -std=c89 -Wall
BUILD_DIR = build

# If no target is specified, the first target is executed
# Compile all examples
all: ansic-001 ansic-002 ansic-003 ansic-004 ansic-005 ansic-006 ansic-007

ansic-001: make-destination
	cc $(CFLAGS) ansic-001.c -o $(BUILD_DIR)/ansic-001

ansic-002: make-destination
	cc $(CFLAGS) ansic-002.c -o $(BUILD_DIR)/ansic-002

ansic-003: make-destination
	cc $(CFLAGS) ansic-003.c -o $(BUILD_DIR)/ansic-003

ansic-004: make-destination
	cc $(CFLAGS) ansic-004.c -o $(BUILD_DIR)/ansic-004

ansic-005: make-destination
	cc $(CFLAGS) ansic-005.c -o $(BUILD_DIR)/ansic-005

ansic-006: make-destination
	cc $(CFLAGS) ansic-006.c -o $(BUILD_DIR)/ansic-006

ansic-007: make-destination
	cc $(CFLAGS) ansic-007.c -o $(BUILD_DIR)/ansic-007

make-destination:
	mkdir -p $(BUILD_DIR)

# descriptions target doesn't produce any files. Always run.
.PHONY: clean descriptions
descriptions:
	$(info ansic-001: Hello World)
	$(info ansic-002: Fahrenheit-Celsius table)
	$(info ansic-003: Fahrenheit-Celsius table using float)
	$(info ansic-004: Fahrenheit-Celsius table using For statement)
	$(info ansic-005: Fahrenheit-Celsius table using symbolic constants)
	$(info ansic-006: getchar and putchar)
	$(info ansic-007: Word counting)

clean:
	rm -rf $(BUILD_DIR)
