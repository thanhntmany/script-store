## Add user

```bash
adduser <username>

# add user to sudo
usermod -aG sudo <username>

# force in code
nano /etc/sudoers
# add line:
# <username> ALL=(ALL:ALL) ALL
# save
# --> reboot server
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
