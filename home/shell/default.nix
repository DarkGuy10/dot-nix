{
  imports = [
    ./zsh
    ./starship.nix
  ];

  # Environment variables
  home.sessionVariables = {
    # Set default applications
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "ghostty";

    # Enable scrolling in git diff
    DELTA_PAGER = "less -R";
  };

  # Shell alieases
  home.shellAliases = {
    sysup = "sudo nixos-rebuild switch --flake /etc/nixos/#eva-04";
    systest = "sudo nixos-rebuild test";
    sysconf = "nvim ~/dot-nix/";
    sysclean = "nix-collect-garbage";
    cat = "bat";
    grep = "rg";
  };
}
