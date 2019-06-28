
FROM playmobils/android-sdk:28
ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN dpkg --add-architecture i386 && \
  apt-get -qq update && \
  apt-get -qqy install --no-install-recommends \
  file && \
  rm -rf /var/lib/apt/lists/*\
  /tmp/* \
  /var/tmp/* \
  /var/cache/apt/archives/* \
  /var/cache/debconf/*-old

ENV ANDROID_NDK_HOME ${ANDROID_HOME}/ndk-bundle

ENV PATH ${ANDROID_NDK_HOME}:$PATH

ENV NDK_PACKAGES "ndk-bundle" \
                 "cmake;3.6.4111459"
                 
RUN (while [ 1 ]; do sleep 5; echo y; done) | \
  ${ANDROID_HOME}/tools/bin/sdkmanager ${NDK_PACKAGES}
  
