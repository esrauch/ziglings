#!/bin/bash
BUILD=zig-linux-x86_64-0.12.0-dev.280+64d03faae 

cd /workspaces/ziglings/
curl https://ziglang.org/builds/$BUILD.tar.xz -o /tmp/zig.tar.xz
tar -xf /tmp/zig.tar.xz
mv /tmp/$BUILD/ .zig
echo "export PATH=$PATH:$PWD/.zig" > ~/.bashrc

