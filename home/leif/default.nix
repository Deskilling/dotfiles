{
  imports = [
    ./values.nix
  ];

  home.stateVersion = "26.05";
  nixpkgs.config.allowUnfree = true;
}
