FROM debian:bullseye

RUN ["/usr/bin/apt", "update"]
RUN ["/usr/bin/apt", "install", "sudo", "curl", "python", "python3", "rsync", "libncurses5", "ripgrep", "vim", "aria2", "git", "-y"]
RUN git clone https://gitlab.com/OrangeFox/misc/scripts
RUN bash scripts/setup/android_build_env.sh
RUN apt install openjdk-11-jdk openjdk-11-jre -y
# forgive me god for my sins but i could not figure it out
RUN bash scripts/setup/install_android_sdk.sh

CMD ["bash"]
