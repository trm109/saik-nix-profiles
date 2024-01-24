# user-profiles/saik.nix

## User Profile for Saik.

{ inputs, config, lib, pkgs, ... }:

{
  # Enable Home Manager
  programs.home-manager.enable = true;

  # Configure user basics
  home.username = "saik";
  home.homeDirectory = "/home/saik";

  # Add Session Variables
  home.sessionVariables = {
    EDITOR = "nvim";
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
