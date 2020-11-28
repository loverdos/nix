{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-misc";
  paths = with pkgs; [
    # archiving
    atool
    p7zip

    # browser
    # next
    vimb

    # build
    ant
    cachix
    # cmake
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

    # dict
    wordnet

    # diff
    colordiff
    diffutils
    wdiff

    # docs
    diffpdf
    # noweb
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

    # IDL
    cbor-diag
    cddl # cbor
    flatbuffers
    protobuf
    thrift

    # issue tracking
    taskwarrior
    tasknc
    tasksh

    # media
    youtube-dl

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
    
    # By installing nixFlakes, I was getting a priority error,
    #######################################################
    #   error: packages
    #   '/nix/store/60ksrk5pzzxvvy5dd5dqak27hqabn6f3-nix-2.3.6-man/share/man/man5/nix.conf.5.gz'
    #   and
    #   '/nix/store/7i8bgcvdpvd70pwmj9a81awrw14si5w8-christos-misc/share/man/man5/nix.conf.5.gz'
    #   have the same priority 5;
    #   use 'nix-env --set-flag priority NUMBER INSTALLED_PKGNAME'
    #   to change the priority of one of the conflicting packages (0 being the highest priority)
    #######################################################
    # which I fixed locally by running:
    # $ nix-env --set-flag priority 20 nix 
    nixFlakes
    
    # nixfmt
    # nixops
    nixos-container
    nox
    patchelf

    # notifications
    # notify-desktop

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
    # tmux
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

    # terminal
    asciinema
    termtosvg

    # VCS
    fossil
    mercurial
    
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
  ];
}