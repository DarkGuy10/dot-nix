{
  lib,
  ...
}:
{
  # Enable Nix Command and Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Weekly garbage collection
  nix.gc = {
    automatic = lib.mkDefault true;
    dates = lib.mkDefault "weekly";
    options = lib.mkDefault "--delete-older-than 7d";
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

}
