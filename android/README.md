# android

[![android-ndk](http://dockeri.co/image/playmobils/android)](https://hub.docker.com/r/playmobils/android)

This is a Dockerfile contains remaining tools for our build environment.

## Dependencies
* [OpenJDK 8](https://hub.docker.com/_/openjdk)
* [Android SDK](https://hub.docker.com/r/playmobils/android-sdk)
* [Android NDK](https://hub.docker.com/r/playmobils/android-ndk)

## Include
* Extra tools that needed in order to complete the android production build

## Download
```bash
docker pull playmobils/android
```

## Usage
```bash
sudo docker run -it playmobils/android sh
```

## License
![Apache License, Version 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)
