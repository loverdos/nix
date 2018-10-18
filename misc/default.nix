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
    glibcLocales
    packer
    terraform

    # build
    ant
    cmake
    stack

    # shell
    fish
    mosh
    shellcheck
    tmux

    # desktop
    rofi
    
    # git
    gitFull
    gitAndTools.diff-so-fancy
    gitAndTools.git-open
    gitAndTools.git-imerge
    gitAndTools.tig
    trufflehog

    # monitoring
    htop

    # docs
    mkdocs
    pandoc # see also some haskell packages
    pdftk
    pdfpc

    # PIM
    perkeep

    # network
    curl
    httpie
    hping
    nmap
    openssh
    openssl_1_1
    rsync
    wget
    zerotierone

    # nix
    nix-diff
    nix-info
    nix-prefetch-git
    nixops
    nox
    patchelf

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
    tasksh

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