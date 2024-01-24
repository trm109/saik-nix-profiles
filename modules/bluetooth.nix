# modules/bluetooth.nix

{
  # Enable Bluetooth
  hardware.bluetooth.enable = true;
  # Enable Bluetooth on boot
  hardware.bluetooth.powerOnBoot = true;
  # Enable Bluetooth management
  services.blueman.enable = true;
}
