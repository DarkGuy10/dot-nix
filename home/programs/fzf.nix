{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--layout=reverse"
      "--info=inline"
      "--preview='bat {}'"
      "--border=rounded"
      "--margin=1"
      "--padding=1"
    ];

    # Catppuccin theme: https://github.com/catppuccin/fzf
    colors = {
      bg = "#1E1E2E";
      "bg+" = "#313244";
      fg = "#CDD6F4";
      "fg+" = "#CDD6F4";
      hl = "#F38BA8";
      "hl+" = "#F38BA8";
      info = "#CBA6F7";
      prompt = "#CBA6F7";
      pointer = "#F5E0DC";
      marker = "#B4BEFE";
      spinner = "#F5E0DC";
      header = "#F38BA8";
      "selected-bg" = "#45475A";
      border = "#6C7086";
      label = "#CDD6F4";
    };
  };
}
