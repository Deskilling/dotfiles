{ pkgs, lib, ... }:
{
  home.file.".Brewfile".text = lib.mkAfter (
    lib.optionalString pkgs.stdenv.hostPlatform.isDarwin ''
      brew "git"
    ''
  );

  programs.git = {
    enable = true;
    package =
      if pkgs.stdenv.hostPlatform.isDarwin then
        pkgs.runCommand "git-brew" { meta.mainProgram = "git"; } ''
          mkdir -p $out/bin
          ln -s /opt/homebrew/bin/git $out/bin/git
        ''
      else
        pkgs.lazygit;

    settings = {
      user.email = "deskilling@tuta.com";
      user.name = "Leif Haberecht";
    };
  };

  programs.keychain = {
    enable = true;
    keys = [ "id_ed25519" ];
    extraFlags = [ "--quiet" ];
  };
}
