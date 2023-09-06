#!/bin/bash
BUILD=zig-linux-x86_64-0.11.0

pushd /tmp
curl https://ziglang.org/builds/$BUILD.tar.xz -o /tmp/zig.tar.xz
tar -xf /tmp/zig.tar.xz

popd
mv /tmp/$BUILD/ $PWD/.zig
echo "export PATH=$PATH:$PWD/.zig" > ~/.bashrc

