# Docker alias and functions

pull aliases 

      curl https://raw.githubusercontent.com/anlcan/docker-alias/master/zshrc -o .docker_alias && source .docker_alias;

add this to your bash/sh/zstlk profile

    if [ -f ~/.docker_alias ]; then
      . ~/.docker_alias
    fi

## Reference

- [Useful Docker Bash functions and aliases](http://kartar.net/2014/03/useful-docker-bash-functions-and-aliases)
- [15 QUICK DOCKER TIPS](https://labs.ctl.io/15-quick-docker-tips/)
