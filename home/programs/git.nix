{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gh
    lazygit
  ];

  programs.git = {
    enable = true;
    extraConfig = {
      credential = {
        credentialStore = "secretservice";
        helper = "${pkgs.git-credential-manager}/bin/git-credential-manager";
      };
    };
  };
}
