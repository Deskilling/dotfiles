{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    osu-lazer-bin
    prismlauncher
    r2modman
    heroic
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  programs.gamescope = {
    enable = true;
    capSysNice = false;
  };

  programs.gamemode.enable = true;
}
