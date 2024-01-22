# packages/steam.nix
{ config, lib, pkgs, inputs, ... }:

{
  # Configuration for Steam
  programs.steam.enable = true;

  # Add additional packages for Steam
  environment.systemPackages = with pkgs; [
    gamescope
    gamemode
    mangohud
  ];
}
