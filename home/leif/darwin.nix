{
  lib,
  ...
}:

{
  imports = [
    ./config/cli/btop.nix
    ./config/cli/fastfetch.nix
    ./config/cli/git.nix
  ];

  home.username = "leifhaberecht";
  home.homeDirectory = "/Users/leifhaberecht";
  home.stateVersion = "25.11";
}
