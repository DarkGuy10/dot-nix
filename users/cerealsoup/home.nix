{ ... }:
{
  imports = [
    ../../home/core.nix
    ../../home/shell
    ../../home/terminal
    ../../home/programs
  ];

  programs.git = {
    userName = "DarkGuy10";
    userEmail = "SSSCerealSoup@proton.me";
  };
}
