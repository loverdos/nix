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
    cmake
    maven
    meson
    stack

    # CLI
    ag
    exa
    fzy
    help2man
    jid
    jq
    parallel
    pv
    ripgrep
    rlwrap

    # cloud
    awscli

    # diff
    colordiff
    diffutils
    wdiff

    # docs
    diffpdf
    pandoc # see also some haskell packages
    pdftk
    pdfpc
    qpdf
    texinfo
    unpaper
    xsane

    # drawing
    ditaa
    plantuml
    umlet

    # editing
    vimHugeX
    # emacs

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
    gitstats
    gti

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
    httpie # `http` is the executable
    hping
    iptraf-ng
    jnettop
    magic-wormhole
    netsniff-ng
    nmap
    openssh
    openssl
    rclone
    rsync
    wget
    # zerotierone

    # nix
    nix-diff
    nix-info
    nix-prefetch-git
    # nixfmt
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
    fish
    mosh
    shellcheck
    tmux
    zsh

    # sound
    espeak # espeak-ng

    # system
    ansible
    coreutils
    docker_compose
    docker-machine
    glibcLocales
    gparted
    nsjail
    proot
    sysstat

    # system info
    i7z
    htop
    ncdu
    neofetch
  ];
}