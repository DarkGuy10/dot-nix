{ ... }:
{
  programs.git.enable = true;
  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };
  programs.lazygit.enable = true;
}
