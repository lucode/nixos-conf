{ config, pkgs, ...}:
{
# Define user accounts. Don't forget to set a password with ‘passwd’.
users = {
    groups = {
      lucas = {};
      holochain = {};
      };
    users = {
      lucas = {
        isNormalUser = true;
        home = "/home/lucas";
        description = "Lucas Huber";
        extraGroups = ["wheel" "video" "audio" "disk" "networkmanager"];        
        group = "lucas";
        shell = pkgs.zsh;
      };

      holochain = {
        isNormalUser = true;
        home = "/home/holochain";
        description = "Holochain";
        extraGroups = ["wheel" "video" "audio" "disk" "networkmanager"];
        group = "users";
        shell = pkgs.zsh;
      };
    };
  };
}
