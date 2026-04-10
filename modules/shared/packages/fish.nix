{ ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
      update = "sudo nix flake update --flake /etc/nixos";
      config = "sudo env ZED_ALLOW_ROOT=true zeditor /etc/nixos/";
      generations = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
      gcl = "nix-collect-garbage -d";
    };
  };
}
