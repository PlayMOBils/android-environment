#!/bin/bash
repo=playmobils

function dockerBuild() {
    echo "------------------------------------"
    echo "------------------------------------"
    echo "Start build $repo/$1:$2 ..."
    echo "------------------------------------"
    docker build -t $repo/$1:$2 $3
    echo "------------------------------------"
    echo "End build $repo/$1:$2."
    echo "------------------------------------"
    echo "------------------------------------"
    echo ""
    echo ""
}

dockerBuild android-sdk 30 android/sdk
dockerBuild android-ndk 30_21 android/ndk
dockerBuild android 30_21 android
