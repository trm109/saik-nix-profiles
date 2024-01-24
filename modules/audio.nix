# modules/audio.nix
{ pkgs, ... }:
{
  # Enable pipewire
  sound.enable = true;
  # Enable realtime scheduling
  security.rtkit.enable = true;
  # Enable pipewire services
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    # Enable Pulse
    pulse.enable = true;
    # Enable JACK
    jack.enable = true;
  };
  # Enable wireplumber
  services.pipewire.wireplumber.enable = true;
  
  # Additional Packages
  environment.systemPackages = with pkgs; [
    pavucontrol
  ];
}
