INSTDIR=/usr/local/bin

all:
	$(MAKE) -C ChefInterpreter/src

install: all
	mkdir -p $(INSTDIR)
	cp ChefInterpreter/src/Chef $(INSTDIR)/
	chmod a+rX $(INSTDIR)/Chef

clean:
	$(MAKE) -C ChefInterpreter/src clean

.PHONY: all clean install
