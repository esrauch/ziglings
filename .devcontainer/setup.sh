#!/bin/bash
BUILD=zig-linux-x86_64-0.12.0-dev.280+64d03faae 

pushd /tmp
curl https://ziglang.org/builds/$BUILD.tar.xz -o /tmp/zig.tar.xz
tar -xf /tmp/zig.tar.xz

popd
mv /tmp/$BUILD/ $PATH/.zig
echo "export PATH=$PATH:$PWD/.zig" > ~/.bashrc

