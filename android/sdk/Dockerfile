
FROM openjdk:11
ARG DEBIAN_FRONTEND=noninteractive
USER root
# Everything will be installed in the directory but jdk.
ENV SDK_HOME /usr/local

#Prerequistic packages libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
RUN \
  dpkg --add-architecture i386 && \
  apt-get -qq update && \
  apt-get install -qqy --no-install-recommends \
  curl \
  libc6:i386 \
  libncurses5:i386 \
  libstdc++6:i386 \
  lib32z1 \
  libbz2-1.0:i386 \
  && \
  rm -rf \
  /var/lib/apt/lists/* \
  /tmp/* \
  /var/tmp/* \
  /var/cache/apt/archives/* \
  /var/cache/debconf/*-old

ENV ANDROID_HOME "${SDK_HOME}/sdk"
ENV PATH "$PATH:${ANDROID_HOME}/tools"

ENV VERSION_BUILD_TOOLS "32.0.0"
ENV VERSION_TARGET_SDK "32"

# https://developer.android.com/studio/index.html#command-tools
ENV ANDROID_TOOLS_URL https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip

RUN curl -L "${ANDROID_TOOLS_URL}" -o tools.zip && \
  unzip /tools.zip -d ${ANDROID_HOME} && \
  rm -vrf /tools.zip && \
  rm -vrf \
  ${ANDROID_HOME}/tools/monitor-* \
  ${ANDROID_HOME}/tools/proguard/examples \
  ${ANDROID_HOME}/tools/proguard/docs \
  ${ANDROID_HOME}/tools/templates \
  ${ANDROID_HOME}/tools/apps

ENV SDK_PACKAGES "build-tools;${VERSION_BUILD_TOOLS}" \
  "platform-tools" \
  "platforms;android-${VERSION_TARGET_SDK}"

RUN mkdir ~/.android
RUN echo "count=0" > ~/.android/repositories.cfg

RUN yes | ${ANDROID_HOME}/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses

RUN (while [ 1 ]; do sleep 5; echo y; done) | \
  ${ANDROID_HOME}/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} ${SDK_PACKAGES} \
  && \
  rm -vrf `find -type d -name docs` && \
  rm -vrf `find -type d -name templates` && \
  rm -vrf `find -type d -name examples` && \
  rm -vrf `find -type f -name *-javadoc.jar*`
