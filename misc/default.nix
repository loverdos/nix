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
    exa
    jq
    parallel
    pv

    # cloud
    awscli
    ec2_api_tools

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
    xsane

    # drawing
    umlet
    plantuml

    # emulation
    wine
    winetricks

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
    nixos-container
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
    pass
    pwgen

    # shell
    fish
    mosh
    shellcheck
    tmux
    zsh

    # system
    docker_compose
    docker-machine
    glibcLocales
    i7z
    nsjail
    packer
    terraform
  ];
}