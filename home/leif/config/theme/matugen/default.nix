{
  pkgs,
  ...
}:
{
  home.packages = with pkgs;[
    matugen
  ];

  home.file.".config/matugen" = {
    source = ./config;
    executable = true;
    force = true;
  };
}
