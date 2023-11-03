CC = emcc
CFLAGS = -O3 -s WASM=1 -s EXPORTED_RUNTIME_METHODS='["cwrap"]' \
		-I libwebp \
		webp.c \
		libwebp/src/{dec,dsp,demux,enc,mux,utils}/*.c \
		libwebp/sharpyuv/*.c
TARGET = webp
SRC = webp.c

.PHONY: clean

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET).js

clean:
	rm $(TARGET).js $(TARGET).wasm
