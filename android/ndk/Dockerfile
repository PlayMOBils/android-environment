
FROM playmobils/android-sdk:32
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

ENV NDK_VERSION "21.4.7075529"

# ENV ANDROID_SDK_HOME "/usr/local/sdk"

ENV ANDROID_NDK_HOME ${ANDROID_HOME}/ndk/${NDK_VERSION}

ENV PATH ${ANDROID_NDK_HOME}:$PATH

ENV NDK_PACKAGES "ndk;${NDK_VERSION}" \
                 "cmake;3.22.1" \
                 "cmake;3.18.1"

RUN yes | ${ANDROID_HOME}/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses

RUN (while [ 1 ]; do sleep 5; echo y; done) | \
  ${ANDROID_HOME}/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} ${NDK_PACKAGES}
  
