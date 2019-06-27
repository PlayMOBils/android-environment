
FROM playmobils/android-sdk:28
ARG DEBIAN_FRONTEND=noninteractive

# Everything will be installed in the directory but jdk.
ENV SDK_HOME /usr/local

# Install dependencies
RUN dpkg --add-architecture i386 && \
  apt-get -qq update && \
  apt-get -qqy install --no-install-recommends \
  file \
  cmake && \
  rm -rf /var/lib/apt/lists/*\
  /tmp/* \
  /var/tmp/* \
  /var/cache/apt/archives/* \
  /var/cache/debconf/*-old


ENV MGR /usr/local/sdk/tools/bin/sdkmanager

RUN ${MGR} "ndk-bundle"

ENV ANDROID_NDK_HOME ${SDK_HOME}/ndk-bundle

ENV PATH ${ANDROID_NDK_HOME}:$PATH
