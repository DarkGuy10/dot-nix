{
  pkgs,
  ...
}:
{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    # QT6 variant needed for catppuccin port
    package = pkgs.kdePackages.sddm;
  };

  catppuccin.sddm = {
    enable = true;
    # loginBackground = true;
    # background = "/etc/nixos/backgrounds/login.jpg";
    fontSize = "11";
  };
}
