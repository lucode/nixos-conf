{ config, pkgs, ...}:

# Packages for Holochain developement

let unstable = import <nixos-unstable> {};
in {
    environment.systemPackages = with pkgs; [
        gitAndTools.gitflow
        gitstats
        nix-prefetch-scripts
        vagrant
        which
        nodejs-slim
    ];
    programs.npm.enable = true;
    users.users.holochain.extraGroups = ["holochain"];
}
