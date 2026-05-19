{
  lib,
  ...
}:

{
  imports = [
    ./config/btop.nix
    ./config/fastfetch.nix
    ./config/git.nix
  ];

  home.username = "leifhaberecht";
  home.homeDirectory = "/Users/leifhaberecht";
  home.stateVersion = "25.11";
}
