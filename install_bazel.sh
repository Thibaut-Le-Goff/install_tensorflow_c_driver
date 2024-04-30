#!/bin/bash 
# source: https://bazel.build/install/ubuntu

apt install apt-transport-https curl gnupg -y

curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg

mv bazel-archive-keyring.gpg /usr/share/keyrings

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list

apt update && apt install bazel

apt update && apt full-upgrade

#apt install bazel-7.1.1

# require bazel 6.5
apt install bazel-6.5.0

#ln -s /usr/bin/bazel-7.1.1 /usr/bin/bazel


