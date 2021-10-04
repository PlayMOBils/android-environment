# android-sdk

[![android-sdk](http://dockeri.co/image/playmobils/android-sdk)](https://hub.docker.com/r/playmobils/android-sdk)


This is a Dockerfile to make minimum images for Android projects.

No `git` or other tools are included.

## Dependencies
* [OpenJDK 11](https://hub.docker.com/_/openjdk)

## Include
* Android SDK (android-30)
* Android Support Libraries
* Google Play Services

## Download
```bash
docker pull playmobils/android-sdk:30
```

## Usage
```bash
sudo docker run -it playmobils/android-sdk:30 sh
```

## License
![Apache License, Version 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)
