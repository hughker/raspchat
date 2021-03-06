#!/bin/bash

rm -rf dist
mkdir -p dist
mkdir -p dist/static

echo "Compiling server..."
./build_server.sh

echo "Packaging client assets..."
./compile_assets.sh
cp ./static/*.html dist/static
cp ./static/*.css dist/static
cp ./static/*.min.js dist/static
