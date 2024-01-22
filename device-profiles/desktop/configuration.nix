# configuration.nix

## Configuration file for the Desktop NixOs installation.

{ config, lib, pkgs, inputs, ... }:

{
  # Add your users, packages, modules, etc here.
  imports = [
    # Hardware set up (fstab equivalent)
    ./hardware-configuration.nix
    # Home Manager
    ./home.nix

    # Users
    ./user-profiles/saik.nix
    # Modules
    ./modules/audio.nix
    ./modules/networking.nix
    ./modules/bluetooth.nix
    ./modules/printing.nix
    ./modules/hyprland.nix
    ./modules/asus.nix

    # Packages
    ./packages/kitty.nix
    ./packages/neovim.nix
    ./packages/steam.nix
    ./packages/office.nix
    ./packages/terminal-extras.nix
    ./packages/development.nix
    ./packages/docker.nix
  ];

  # Enable Flakes.
  nix.settings.experimental-features = [ "flakes" "nix-command" ];
  
  # User systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Set Timezone.
  time.timeZone = "America/New_York";

  # Set Locale.
  i18n.defaultLocale = "en_US.UTF-8";
  services.xserver.xkb.layout = "us";
  
  # Allow Unfree Packages.
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [];



  system.stateVersion = "23.11";
} 

