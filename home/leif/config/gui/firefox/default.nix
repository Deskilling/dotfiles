{
  pkgs,
  lib,
  config,
  ...
}:
{
  programs.firefox = {
    enable = true;
    policies = lib.mkMerge [
      (import ./policies.nix { inherit config pkgs lib; })
      (import ./extensions.nix { inherit config pkgs lib; })
      { }
    ];
    profiles = {
      "default" = {
        id = 0;
        isDefault = true;
        settings = import ./preferences.nix;
      };
    };
  };

  home.packages = with pkgs; [
    pywalfox-native
  ];
}
