#!/bin/bash
cmake . -Bbuild -DCMAKE_BUILD_TYPE=Debug -DTARGET=$1 && cmake --build build -j4