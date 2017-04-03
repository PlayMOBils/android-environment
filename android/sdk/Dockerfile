
FROM playmobils/oracle-jdk:8
ARG DEBIAN_FRONTEND=noninteractive

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

# Accept License
RUN mkdir -p $ANDROID_HOME/licenses/ && \
    echo "8933bad161af4178b1185d1a37fbf41ea5269c55" > $ANDROID_HOME/licenses/android-sdk-license && \
    echo "84831b9409646a918e30573bab4c9c91346d8abd" > $ANDROID_HOME/licenses/android-sdk-preview-license

ENV VERSION_SDK_TOOLS "25.2.5"
ENV VERSION_BUILD_TOOLS "23.0.3"
ENV VERSION_TARGET_SDK "23"

ENV SDK_PACKAGES "build-tools-${VERSION_BUILD_TOOLS},\
android-${VERSION_TARGET_SDK},\
addon-google_apis-google-${VERSION_TARGET_SDK},\
platform-tools,\
extra-android-m2repository,\
extra-android-support,\
extra-google-google_play_services,\
extra-google-m2repository"

ENV ANDROID_TOOLS_URL http://dl.google.com/android/repository/tools_r${VERSION_SDK_TOOLS}-linux.zip

RUN curl -L "${ANDROID_TOOLS_URL}" -o tools.zip && \
    unzip /tools.zip -d ${ANDROID_HOME} && \
    rm -vrf /tools.zip && \
    rm -vrf \
      ${ANDROID_HOME}/tools/monitor-* \
      ${ANDROID_HOME}/tools/proguard/examples \
      ${ANDROID_HOME}/tools/proguard/docs \
      ${ANDROID_HOME}/tools/templates \
      ${ANDROID_HOME}/tools/apps

RUN (while [ 1 ]; do sleep 5; echo y; done) | \
    ${ANDROID_HOME}/tools/android update sdk --no-ui --all --filter ${SDK_PACKAGES} && \
    rm -vrf `find -type d -name docs` && \
    rm -vrf `find -type d -name templates` && \
    rm -vrf `find -type d -name examples` && \
    rm -vrf `find -type f -name *-javadoc.jar*`
