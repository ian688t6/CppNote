include config.mk
.PHONY: all clean

all:
	@make -C 01-hello

clean:
	@make clean -C 01-hello

