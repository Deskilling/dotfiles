{ self, pkgs, ... }:
{
  home.packages = with pkgs; [ matugen ];

  home.file.".config/matugen" = {
    source = "${self}/home/leif/config/theme/matugen";
    executable = true;
    force = true;
  };
}
