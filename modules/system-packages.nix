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
    ntfs3g # ntfs support
    seahorse # gui keyring manager
  ];

  # Set default editor to nvim
  environment.variables.EDITOR = "nvim";
}
