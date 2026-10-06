# Set general compiler flags
CFLAGS = -std=c89

# If no target is specified, the first target is executed
# Compile all examples
all: ansic-001

ansic-001:
	cc $(CFLAGS) ansic-001.c -o ansic-001


# descriptions target doesn't produce any files. Always run.
.PHONY: descriptions clean
descriptions:
	$(info ansic-001: Hello World)

clean:
	rm -f ansic-001
