# android-ndk

[![android-ndk](http://dockeri.co/image/playmobils/android-ndk)](https://hub.docker.com/r/playmobils/android-ndk)


This is a Dockerfile to make an image for Android Native projects.

No other tools are included.

## Dependencies
* [OpenJDK 8](https://hub.docker.com/_/openjdk)
* [Android SDK](https://hub.docker.com/r/playmobils/android-sdk)

## Include
* Android NDK Bundle
* file (Needed by ndk-build command)

## Download
```bash
docker pull playmobils/android-ndk:28_20
```

## Usage
```bash
sudo docker run -it playmobils/android-ndk:28_20 sh
```

## License
![Apache License, Version 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)
