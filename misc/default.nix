{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-misc";
  paths = with pkgs; [
    # build
    ant
    cmake
    stack

    # CLI
    ag
    jq
    parallel
    pv

    # desktop
    rofi
    rofi-systemd

    # diff
    colordiff
    diffutils
    wdiff

    # docs
    mkdocs
    pandoc # see also some haskell packages
    pdftk
    pdfpc

    # drawing
    umlet
    plantuml

    # git
    gitFull
    gitAndTools.diff-so-fancy
    gitAndTools.git-open
    gitAndTools.git-imerge
    gitAndTools.tig
    trufflehog

    # IDL
    protobuf
    thrift

    # issue tracking
    taskwarrior
    tasknc
    tasksh

    # media
    youtube-dl

    # monitoring
    htop

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

    # parsing/semantics/formal
    antlr
    ragel
    z3

    # PIM
    gcalcli
    perkeep

    # security
    pwgen

    # shell
    fish
    mosh
    shellcheck
    tmux

    # system
    docker_compose
    docker-machine
    glibcLocales
    i7z
    packer
    terraform
  ];
}