# user-profiles/saik.nix

## User Profile for Saik.

{ inputs, config, lib, pkgs, ... }:

{
  # Import Home-Manager
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  # Configure Home Manager
  home-manager = {
    extraSpecialArgs = {
      inherit inputs;
    };
    users = {
      "saik" = {
        imports = [
          ../home.nix
        ];
      };
    };
  };
  
  # Create the user
  users.users.saik = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
      "input"
      "docker"
      "libvirt"
      "vboxusers"
      "kvm"
    ];
  };
}
