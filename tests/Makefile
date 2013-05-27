TARGETS = simple.html hello.html Makefile.html stdio.html

PYLITE = ../src/pylite -m ""

vpath %.h /usr/include

all: $(TARGETS)

%.html: %.c
	$(PYLITE) $< > $@

%.html: %.h
	$(PYLITE) $< > $@

%.html: %
	$(PYLITE) $< > $@
	
clean:
	rm -rf $(TARGETS)
	
