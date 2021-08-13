{ config, pkgs, ...}:

# Common Packages for developement

let unstable = import <nixos-unstable> {};
in {
  environment.systemPackages = with pkgs; [
    git
    gitAndTools.gitflow
    gitstats
    wget
    nix-prefetch-scripts
    vagrant
    python39
    oh-my-zsh
    htop
    sshfs
    traceroute
    tree
    which
    jetbrains.pycharm-community
    nodejs-slim
    ];
    programs.npm.enable = true;
    users.users.holochain.extraGroups = ["users"];
}
