{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    fd
    xclip # for clipboard
    wl-clipboard # Wayland clipboard

    # networking tools
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    wireshark # Packet capture tool

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # productivity
    glow # markdown previewer in terminal
    obsidian

    btop # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system tools
    sysstat
    ethtool
    pciutils # lspci
    usbutils # lsusb
    gparted # partioner

    vlc # media player
  ];
}
