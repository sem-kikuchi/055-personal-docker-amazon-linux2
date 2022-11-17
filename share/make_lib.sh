#!/bin/sh

mkdir /root/temp
cp -rip /share/GameLift-SDK-Release-4.0.2 ~/temp/

cd /root/temp/GameLift-SDK-Release-4.0.2/GameLift-Cpp-ServerSDK-3.4.2/cmake

cmake3 -DBUILD_FOR_UNREAL=1 ..
make

cp -ri /root/temp/GameLift-SDK-Release-4.0.2/GameLift-Cpp-ServerSDK-3.4.2/cmake/prefix/lib/libaws-cpp-sdk-gamelift-server.so /local/build/

echo 'done'