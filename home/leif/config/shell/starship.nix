{ lib, pkgs, ... }:
{
  home.file.".Brewfile".text = lib.mkAfter (
    lib.optionalString pkgs.stdenv.hostPlatform.isDarwin ''
      brew "starship"
    ''
  );

  programs.starship = {
    enable = true;
    package =
      if pkgs.stdenv.hostPlatform.isDarwin then
        pkgs.runCommand "starship-brew" { meta.mainProgram = "starship"; } ''
          mkdir -p $out/bin
          ln -s /opt/homebrew/bin/starship $out/bin/starship
        ''
      else
        pkgs.starship;

    enableZshIntegration = true;

    settings = {
      add_newline = false;

      format = ''
        [╭](dimmed) $username@$hostname $directory$env_var
        [╰](dimmed) $character
      '';

      username = {
        show_always = true;
        format = "[$user](fg:5)";
      };

      hostname = {
        ssh_only = false;
        format = "$hostname";
      };

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
        format = "[$path](fg:5) ";
      };

      character = {
        success_symbol = "[❯](fg:2)";
        error_symbol = "[❯](fg:1)";
      };

      env_var = {
        variable = "DIRENV_DIR";
        format = "[❄ flake](fg:4)";
      };
    };
  };
}
