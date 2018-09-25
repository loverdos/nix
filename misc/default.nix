{ pkgs /*: NixPkgs*/ }:

pkgs.buildEnv {
  name = "ckkl-misc";
  paths = with pkgs; [
    # diff
    colordiff
    diffutils
    wdiff

    # platform
    docker_compose
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
    wget

    # nix
    nix-info
    nix-prefetch-git
    nixops

    # CLI
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