{
  config,
  self,
  lib,
  ...
}:
{
  home.packages = lib.optionals config.matugen.enable [
    config.matugen.package
  ];

  home.file.".config/matugen" = lib.mkIf config.matugen.enable {
    source = "${self}/home/leif/config/theme/matugen";
    executable = true;
    force = true;
  };
}
