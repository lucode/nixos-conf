{ config, pkgs, ...}:
 # Enable the Plasma 5 Desktop Environment.
{
  services.xserver = {
    enable = true;
    layout = "en";
    displayManager.sddm = {
      enable = true;
    };
    desktopManager.plasma5 = {
      enable = true;
    };
  };

  # System packages related to desktop
  environment.systemPackages = with pkgs; [

  ];
}
