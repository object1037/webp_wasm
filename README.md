# wasm webp convert

https://developer.mozilla.org/ja/docs/WebAssembly/existing_C_to_wasm

```shell
emcc -O3 -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' \
  -I libwebp \
  webp.c -o webp.js \
  libwebp/src/{dec,dutils}/*.c
```

```shell
python -m http.server
```
