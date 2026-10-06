# Set general compiler flags
CFLAGS = -std=c89

# If no target is specified, the first target is executed
# Compile all examples
all: ansic-001 ansic-002

ansic-001:
	cc $(CFLAGS) ansic-001.c -o ansic-001

ansic-002:
	cc $(CFLAGS) ansic-002.c -o ansic-002

# descriptions target doesn't produce any files. Always run.
.PHONY: clean descriptions
descriptions:
	$(info ansic-001: Hello World)
	$(info ansic-002: Fahrenheit-Celsius table)

clean:
	rm -f ansic-001 ansic-002
