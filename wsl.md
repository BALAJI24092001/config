# Windows Subsystem for Linux (WSL)

install wsl.exe from [here](https://learn.microsoft.com/en-us/windows/wsl/install)

use the below commands to install a linux distribution

```bash
# update the wsl manage
wsl --update

# List all installed linux distros
wsl --list

# List all the avilable distros to install
wsl --list --online

# Install ubuntu
wsl --install -d Ubuntu-24.04

# set wsl version to 2
wsl --set-default-version 2
```

# Ubuntu-24.04 LTS WSL

mandatory commands after ubuntu installation

```bash
sudo apt update
sudo apt upgrade
```

linux directly comes with a buildin python installation with a default version. Some packages like Tensorflow, Pytorch and Keras only works in older version of python (Currently python3.11). We need to install other version of python in kernel.

Follow this below code to install python3.11

```bash
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.11
```

In linux, pip doesn't work since the base kernal directly linked to python and installing any package using pip might cause depency clashes, it is recommended to use pipx.

```bash
sudo apt install pipx
```

We can install all the required python packages using pipx, it is also recommended by Ubuntu to use pipx for managing packages.

Instead of changing the main python version to older version, we install virtualenv using pipx and then create a virtual enviroment using python3.11 and use the everyting from this venv.

```bash
pipx install virtualenv
virtualenv -p python3.11 venv
source venv/bin/activate
```
