SOURCE=$(wildcard interpreter/*.java)

Chef: Chef.jar
	./jar2exec $< $@

Chef.jar: $(SOURCE)
	javac $^
	jar cfe $@ interpreter.Chef $^ interpreter/*.class

clean:
	rm -f Chef.jar interpreter/*.class

.PHONY: clean
