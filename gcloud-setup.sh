CLOUD_SDK_REPO="cloud-sdk-$(grep VERSION_CODENAME /etc/os-release | cut -d '=' -f 2)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" |  tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key add -
apt-get update &&  apt-get install google-cloud-sdk
