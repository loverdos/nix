{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-misc";
  paths = with pkgs; [
    # diff
    colordiff
    diffutils
    wdiff

    # platform
    docker_compose
    docker-machine
    packer
    terraform

    # build
    ant
    stack

    # shell
    fish
    mosh
    
    # git
    gitFull
    gitAndTools.diff-so-fancy
    gitAndTools.git-open
    gitAndTools.git-imerge
    gitAndTools.tig

    # monitoring
    htop

    # documentation
    mkdocs
    pandoc

    # network
    curl
    httpie
    hping
    nmap
    openssh
    rsync
    wget
    zerotierone

    # nix
    nix-diff
    nix-info
    nix-prefetch-git
    nixops

    # CLI
    ag
    jq
    parallel
    pv

    # IDL
    protobuf
    thrift

    umlet
    plantuml

    # calendar
    gcalcli

    # issue tracking
    taskwarrior
    tasknc

    # media
    youtube-dl

    # parsing/semantics/formal
    antlr
    ragel
    z3

    # security
    pwgen
  ];
}