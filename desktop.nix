{ config, pkgs, ...}:
{
  services.xserver = {
    enable = true;
    layout = "fr";
    displayManager.gdm = {
      enable = true;
    };
    desktopManager.gnome = {
      enable = true;
    };
  };

  services.gnome = {
    sushi.enable = true;
  };

  # System packages related to desktop
  environment.systemPackages = with pkgs; [
    adwaita-qt
    gtk3
    gnome3.adwaita-icon-theme
    gnome3.gnome-tweak-tool
    gnome3.vinagre
    pinentry-gnome # Required by gpg-agent. Replace if not using gnome
  ];
}
