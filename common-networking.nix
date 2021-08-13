{ config, pkgs, ... }:
{
    networking = {
        nameservers = [
            "80.67.169.12"
            "80.67.169.40"
        ];
    };
}