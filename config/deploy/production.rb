# api.gos.ch
set :deploy_to, '/srv/api.gos.ch'

# set a branch for this release
set :branch, 'master'

server 'prdsgg.unil.ch', port: '44144', user: 'sggadm', roles: %w{app db web}

# Map docker and docker-compose commands
# NOTE: If stage have different deploy_to
# you have to copy those line for each <stage_name>.rb
# See https://github.com/capistrano/composer/issues/22
SSHKit.config.command_map[:docker_compose] = "docker-compose -p #{fetch(:docker_app_name)}"
SSHKit.config.command_map[:docker] = 'docker'
