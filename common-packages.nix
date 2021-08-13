{ config, pkgs, ...}:

let unstable = import <nixos-unstable> {};
in {
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    mc
    krusader
    keepassxc
    maestral
    maestral-gui
    firefox
    gparted
  ];

}

