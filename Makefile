all:

.PHONY: tests

tests:
	$(MAKE) -C tests

clean:
	$(MAKE) -C tests clean
	
	
