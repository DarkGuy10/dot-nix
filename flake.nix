{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ nixpkgs, home-manager, ... }:
    {
      nixosConfigurations = {
        eva-04 =
          let
            username = "cerealsoup";
            hostname = "eva-04";
            specialArgs = {
              inherit username;
              inherit hostname;
            };
          in
          nixpkgs.lib.nixosSystem {
            inherit specialArgs;
            system = "x86_64-linux";
            modules = [
              ./hosts/eva-04
              ./users/${username}/nixos.nix

              # make home-manager as a module of nixos
              # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
              home-manager.nixosModules.home-manager
              {
                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;
                home-manager.backupFileExtension = "backup";

                home-manager.extraSpecialArgs = inputs // specialArgs;
                home-manager.users.${username} = import ./users/${username}/home.nix;
              }
            ];
          };
      };
    };
}
