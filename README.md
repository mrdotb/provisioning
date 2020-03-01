# How to ?

```curl -fLsS https://raw.githubusercontent.com/mrdotb/provisioning/master/<PLATFORM>/<SCRIPT>.sh | bash -s [ARGS]```

# This scripts require sudo
```
sudo su
curl -fLsS https://raw.githubusercontent.com/mrdotb/provisioning/master/ubuntu16/common.sh | bash -s
curl -fLsS https://raw.githubusercontent.com/mrdotb/provisioning/master/ubuntu16/docker.sh | bash -s $USER
curl -fLsS https://raw.githubusercontent.com/mrdotb/provisioning/master/ubuntu16/docker-compose.sh | bash -s $USER
```
# This scripts will be installed on the current user
```
curl -fLsS https://raw.githubusercontent.com/mrdotb/provisioning/master/ubuntu16/shell.sh | bash -s
curl -fLsS https://raw.githubusercontent.com/mrdotb/provisioning/master/ubuntu16/ohmytmux.sh | bash -s
```
