# device-profiles/desktop/configuration.nix

## Configuration file for the Desktop NixOs installation.

{ config, lib, pkgs, inputs, ... }:

{
  # Add your users, packages, modules, etc here.
  imports = [
    # Modules
    ../../modules/asus.nix
    ../../modules/audio.nix
    ../../modules/bluetooth.nix
    ../../modules/cups.nix
    ../../modules/hyprland.nix
    ../../modules/networking.nix

    # Packages
    #../../packages/kitty.nix
    ../../packages/neovim
    #../../packages/steam.nix
    #../../packages/office.nix
    #../../packages/terminal-extras.nix
    #../../packages/development.nix
    #../../packages/docker.nix
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

