{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-misc";
  paths = with pkgs; [
    # archiving
    atool
    p7zip

    # browser
    vimb

    # build
    ant
    bazel
    cmake
    maven
    meson
    stack

    # CLI
    ag
    exa
    help2man
    jq
    parallel
    pv
    rlwrap

    # cloud
    awscli
    ec2_api_tools
    aws_shell

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
    texinfo
    xsane

    # drawing
    ditaa
    plantuml
    umlet

    # editing
    emacs
    vimHugeX

    # emulation
    dosbox

    # git
    gitAndTools.diff-so-fancy
    gitAndTools.git-absorb
    gitAndTools.git-annex
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

    # mercurial
    mercurial

    # monitoring
    fswatch
    watchman

    # network
    curl
    geoipWithDatabase
    httpie
    hping
    iptraf-ng
    jnettop
    netsniff-ng
    nmap
    openssh
    openssl
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

    # notifications
    notify-desktop


    # parsing/semantics/formal
    antlr
    ragel
    z3

    # PIM
    gcalcli
    perkeep

    # power
    powertop

    # security
    pass
    pwgen

    # shell
    #execline
    fish
    mosh
    shellcheck
    tmux
    zsh

    # sound
    espeak # espeak-ng

    # system
    coreutils
    docker_compose
    docker-machine
    glibcLocales
    gparted
    nsjail
    packer
    proot
    sysstat
    terraform

    # system info
    i7z
    htop
    ncdu
    neofetch
  ];
}