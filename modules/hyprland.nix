# modules/hyprland.nix
{ config, pkgs, ... }:

{
  # Hyprland
  programs.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
    xwayland.enable = true;
  };
  environment.sessionVariables = {
    # Prevents cursors from becoming invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # Hint to election apps to use wayland
    NIXOS_OZONE_WL = "1";
  };
  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop Environment Related Packages
    kitty
    swww
    wofi
    waybar
    mako
    wl-clipboard
    swaylock
    slurp
    grim
    libnotify
    brightnessctl
    asusctl
    lxqt.lxqt-policykit
  ];

  # Enable the XDG portal
  xdg.portal.enable = true;
  #xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  # Enable Swaylock
  security.pam.services = { swaylock = { }; };

}
