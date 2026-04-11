{
  lib,
  ...
}:

{
  imports = lib.filesystem.listFilesRecursive ./config;

  home.username = "leif";
  home.homeDirectory = "/home/leif";
  home.stateVersion = "25.11";
}
