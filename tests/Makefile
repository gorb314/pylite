TARGETS = hello.html

all: $(TARGETS)

%.html: %.c
	../src/pylite $< > $@

clean:
	rm -rf $(TARGETS)
	
