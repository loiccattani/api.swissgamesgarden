# Create a new deploy user
sudo adduser deploy
# Set a password for the new user

# Add the new user to the sudo group
sudo usermod -aG sudo deploy

# Change to the new user
su deploy
cd

# Add SSH key(s) for the new user
sudo mkdir -p .ssh
sudo touch .ssh/authorized_keys
sudo chmod 700 .ssh
sudo chmod 600 .ssh/authorized_keys
# → Copy the public key to the authorized_keys file

# Test SSH access

# Change the group of /srv
sudo chgrp -R deploy /srv
sudo chmod -R g+w /srv

