{
  pkgs,
  username,
  ...
}:
{
  # Setup default user
  users.users.${username} = {
    # Shell managed by Home Manager
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
    isNormalUser = true;
    description = username;
    extraGroups = [
      "networkmanager"
      "wheel"
      # "docker"
    ];
  };

}
