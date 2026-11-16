{ inputs, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop
    chezmoi
    fastfetch
    git
    keychain
    lazygit
    micro
    inputs.cde.packages.${pkgs.stdenv.hostPlatform.system}.default

    # Shell
    direnv
    starship
    zoxide
  ];

  environment.variables.EDITOR = "micro";
}
