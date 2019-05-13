# android-ndk

[![android-ndk](http://dockeri.co/image/playmobils/android-ndk)](https://hub.docker.com/r/playmobils/android-ndk)


This is a Dockerfile to make an image for Android Native projects.

No other tools are included.

## Dependencies
* [OpenJDK 8](https://hub.docker.com/_/openjdk)
* [Android SDK](https://hub.docker.com/r/playmobils/android-sdk)
* [Oracle JDK 8](https://hub.docker.com/r/playmobils/oracle-jdk)

## Include
* Android NDK r14b
* file (Needed by ndk-build command)

## Download
```bash
docker pull playmobils/android-ndk:28_14b
```

## Usage
```bash
sudo docker run -it playmobils/android-ndk:28_14b sh
```

## License
![Apache License, Version 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)
