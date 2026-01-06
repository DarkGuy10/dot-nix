{ ... }:
{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      theme = "catppuccin-mocha";
      command = "zsh";
      background-opacity = 0.95;
      background-blur = true;
      window-decoration = "none";
    };
  };
}
