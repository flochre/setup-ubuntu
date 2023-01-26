# setup-ubuntu

This is my little memo to setup a Linux env

# Install needed stuff and update
```
sudo snap install --classic code
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git terminator bat -y
```

bat is an extension to cat and is very useful to use it with another color have a look at the following:
```
batcat --list-themes
batcat --theme Coldark-Cold file
```

# Generate ssh-key and use it
```
ssh-keygen -t ed25519 -C "myComputerNameComment"
ssh-copy-id -i ~/.ssh/id_rsa.pub user@server
```

add the key(s) to github : https://github.com/settings/keys

# Clone this Repo from Github
```
export GIT_ROOT=${HOME}/workspace/40_Git
mkdir -p ${GIT_ROOT} && cd ${GIT_ROOT}
git clone git@github.com:flochre/setup-ubuntu.git
```

# Link bash_aliases
```
ln -s workspace/40_Git/setup-ubuntu/.bash_aliases ~/.bash_aliases
. ~/.bashrc
```
