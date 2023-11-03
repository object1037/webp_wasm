CC = emcc
CFLAGS = -O3 -s WASM=1 -s EXPORTED_RUNTIME_METHODS='["cwrap"]'
INCLUDE = libwebp
SRC = webp.c libwebp/src/{dec,dsp,demux,enc,mux,utils}/*.c libwebp/sharpyuv/*.c
TARGET = webp

.PHONY: clean

$(TARGET): $(wildcard $(SRC))
	$(CC) $(CFLAGS) -I$(INCLUDE) $(SRC) -o $(TARGET).js

clean:
	rm $(TARGET).js $(TARGET).wasm
