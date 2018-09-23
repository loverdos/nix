FROM loverdos/ubuntu.dev:latest
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

# install: a nix-based environment
ADD nix-install-env.sh $PLAIN_USER_HOME
RUN chown.sh nix-install-env.sh
RUN cmd.sh nix-install-env.sh
