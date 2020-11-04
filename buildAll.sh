#!/bin/bash

python make.py profilingfuncs && mv builds/ammo.js builds/ammo.dev.js
python make.py debug && mv builds/ammo.js builds/ammo.debug.js
python make.py memoryprofiler && mv builds/ammo.js builds/ammo.dev-mp.js
#python make.py profilingfuncs debug wasm && sed 's/"ammo\.wasm\.wasm"/"ammo.debug.wasm.wasm"/' builds/ammo.wasm.js > builds/ammo.debug.wasm.js && mv builds/ammo.wasm.wasm builds/ammo.debug.wasm.wasm
python make.py profilingfuncs wasm && sed 's/"ammo\.wasm\.wasm"/"ammo.dev.wasm.wasm"/' builds/ammo.wasm.js > builds/ammo.dev.wasm.js && mv builds/ammo.wasm.wasm builds/ammo.dev.wasm.wasm

python make.py closure wasm
python make.py closure
