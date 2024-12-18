## Add user

```bash
adduser USERNAME

# add user to sudo
usermod -aG sudo USERNAME

# force in code
nano /etc/sudoers
# add line:
# USERNAME ALL=(ALL:ALL) ALL
# save
# --> reboot server

# update user password
sudo passwd USERNAME
```

## SSH
```bash
# Genkey
ssh-keygen -t ed25519 -C "$(whoami)@$(hostname)"
```

```bash
# list key
for FILE in ~/.ssh/*.pub; do
    echo 
    echo $FILE
    echo ----------------------------
    cat "$FILE"
    echo ----------------------------
done
```

```bash
# Add key to connect
ssh-copy-id -i <pub file path> <server user>@<server domain or ip>
```
