{pkgs, lib, ...}:
{
  home.file.".Brewfile".text = lib.mkAfter (
    lib.optionalString pkgs.stdenv.hostPlatform.isDarwin ''
      cask "godot"
    ''
  );
}
