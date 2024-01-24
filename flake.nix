# flake.nix


{
  # The `description` is just a human-readable string describing the flake.
  description = "NixOS Saik's Flake";
  
  # Flake Versioning
  input = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Outputs
  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };
    in
    {
      nixosConfigurations = {
        default = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit system;
            inherit inputs;
          };
          modules = [
            ./hardware-configuration.nix
            # Custom
            ## User profile
            ./user-profiles/saik.nix
            ## Device profile
            ./device-profiles/desktop.nix
          ];
        };
      };
    };
}
