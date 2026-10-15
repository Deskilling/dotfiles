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
    ];
  };

  environment.systemPackages = with pkgs; [
    pywalfox-native
  ];
}
