#!/bin/bash

mkdir .output

export WASM_SDK="/Users/fuyun/Downloads/mono-wasm"
# for eg:
# $WASM_SDK="D:\WasmSDK\"
# DONT FORGET THE TRAILING SLASH

csc /target:library \
   /out:.output/player.dll \
   /noconfig /nostdlib \
   /r:$WASM_SDK/wasm-bcl/wasm/mscorlib.dll \
   /r:$WASM_SDK/wasm-bcl/wasm/System.dll \
   /r:$WASM_SDK/wasm-bcl/wasm/System.Core.dll \
   /r:$WASM_SDK/wasm-bcl/wasm/Facades/netstandard.dll \
   /r:$WASM_SDK/wasm-bcl/wasm/System.Net.Http.dll \
   /r:$WASM_SDK/framework/WebAssembly.Bindings.dll \
    src/Video/Player.cs

#   /r:$WASM_SDK/framework/WebAssembly.Net.Http.dll \
mono $WASM_SDK/packager.exe --copy=always --out=./wwwroot .output/player.dll
