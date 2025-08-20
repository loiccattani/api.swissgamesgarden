# Create a new deploy user
sudo adduser deploy
# Set a password for the new user

# Add the new user to the sudo group
sudo usermod -aG sudo deploy

# Change to the new user
su deploy
cd

# Add SSH key(s) for the new user
mkdir -p .ssh
touch .ssh/authorized_keys
chmod 700 .ssh
chmod 600 .ssh/authorized_keys
# → Copy the public key to the authorized_keys file

# Test SSH access

# Change the group of /srv
sudo chgrp -R deploy /srv
sudo chmod -R g+w /srv

#### New 08.2025 - Manage Docker as a non-root user

# sudo groupadd docker # (existed already)
sudo usermod -aG docker admsgg
sudo usermod -aG docker deploy
