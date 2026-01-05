{ pkgs, ... }:
{
  home.packages = with pkgs; [
    transmission_4-qt
    # rustc # rust compiler
    gcc # c compiler
    # cargo # rust package manager
    nodejs # js runtime
    nodePackages.npm # npm package manager
    nodePackages.pnpm # pnpm package manager
    yarn-berry # yarn package manager
    bun # bun

    python3
    spotify # music client
  ];
}
