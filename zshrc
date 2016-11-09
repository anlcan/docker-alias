# ------------------------------------
# Docker alias and function
# ------------------------------------

# re source aliases
dsource() {curl https://raw.githubusercontent.com/anlcan/docker-alias/master/zshrc -o .docker_alias && source .docker_alias;}

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Execute interactive container sh with name
desh(){docker exec -it $(docker ps | grep $1 | awk '{print $1}') sh;}

# Remove container
drm() { docker rm -f $(docker ps | grep $1 | awk '{print $1}'); }

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# DOCKER SWARM

# show service
alias dser='docker service ls'

# inspect service
dins() { docker service inspect $1;}



