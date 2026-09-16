{
  self,
  ...
}:
{
  config.enabled.Matugen = true;

  home.file.".config/matugen" = {
    source = "${self}/home/leif/config/theme/matugen";
    executable = true;
    force = true;
  };

}
