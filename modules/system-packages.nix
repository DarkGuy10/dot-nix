{
  pkgs,
  ...
}:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    curl
    fastfetch
    git
    neovim
    lua
    # ntfs support
    ntfs3g
  ];

  # Set default editor to nvim
  environment.variables.EDITOR = "nvim";
}
