{ pkgs, lib, ... }:
{
  home.file.".Brewfile".text = lib.mkAfter (
    lib.optionalString pkgs.stdenv.hostPlatform.isDarwin ''
      brew "lazygit"
    ''
  );

  programs.lazygit = {
    enable = true;
    package =
      if pkgs.stdenv.hostPlatform.isDarwin then
        pkgs.runCommand "lazygit-brew" { meta.mainProgram = "lazygit"; } ''
          mkdir -p $out/bin
          ln -s /opt/homebrew/bin/lazygit $out/bin/lazygit
        ''
      else
        pkgs.lazygit;
  };
}
