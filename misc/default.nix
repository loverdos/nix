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
    help2man
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
    diffpdf
    mkdocs
    pandoc # see also some haskell packages
    pdftk
    pdfpc
    xsane

    # drawing
    umlet
    plantuml

    # editing
    emacs
    vim

    # emulation
    dosbox
    wine
    winetricks

    # git
    gitAndTools.diff-so-fancy
    gitAndTools.git-open
    gitAndTools.git-imerge
    gitAndTools.tig
    gitFull
    git-lfs
    gti
    trufflehog

    # IDL
    flatbuffers
    protobuf
    thrift

    # issue tracking
    taskwarrior
    tasknc
    tasksh

    # media
    youtube-dl

    # network
    curl
    geoipWithDatabase
    httpie
    hping
    jnettop
    netsniff-ng
    nmap
    openssh
    openssl_1_1
    rclone
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
    coreutils
    docker_compose
    docker-machine
    glibcLocales
    nsjail
    packer
    terraform

    # system info
    i7z
    neofetch
    htop
  ];
}