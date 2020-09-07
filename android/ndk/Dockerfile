
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

ENV NDK_VERSION "21.3.6528147"

ENV ANDROID_NDK_HOME ${ANDROID_HOME}/ndk/${NDK_VERSION}

ENV PATH ${ANDROID_NDK_HOME}:$PATH

ENV NDK_PACKAGES "ndk;${NDK_VERSION}" \
                 "cmake;3.10.2.4988404" \
                 "cmake;3.6.4111459"

RUN yes | ${ANDROID_HOME}/tools/bin/sdkmanager --licenses

RUN (while [ 1 ]; do sleep 5; echo y; done) | \
  ${ANDROID_HOME}/tools/bin/sdkmanager ${NDK_PACKAGES}
  
