{ inputs, pkgs, ... }:
{
  imports = [ inputs.mangowm.nixosModules.mango ];

  programs.mango.enable = true;

  services.gnome.sushi.enable = true;

  environment.systemPackages = with pkgs; [
    noctalia
    rofi
    rio
    nautilus
    wlr-randr
    wl-clipboard
    brightnessctl
    playerctl
    grim
    slurp
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
