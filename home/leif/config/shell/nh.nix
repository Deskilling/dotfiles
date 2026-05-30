{ ... }:
{
  programs.nh = {
    enable = true;
    flake = "/home/leif/dotfiles";
    clean = {
      enable = true;
      extraArgs = "--keep-since 14d";
    };
  };
}
