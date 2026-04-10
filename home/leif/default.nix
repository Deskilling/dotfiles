{
  lib,
  ...
}:

{
  imports = lib.filesystem.listFilesRecursive ./apps;

  home.username = "leif";
  home.homeDirectory = "/home/leif";
  home.stateVersion = "25.11";
}
