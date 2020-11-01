# okay i give up
FROM ubuntu:xenial

RUN ["/usr/bin/apt", "update"]
RUN ["/usr/bin/apt", "install", "sudo", "curl", "python", "python3", "rsync", "libncurses5", "vim", "aria2", "git", "openjdk-8-jdk", "openjdk-8-jre", "-y"]
RUN git clone https://gitlab.com/OrangeFox/misc/scripts
RUN bash scripts/setup/android_build_env.sh
RUN apt reinstall openjdk-8-jdk openjdk-8-jre
RUN bash scripts/setup/install_android_sdk.sh

CMD ["bash"]
