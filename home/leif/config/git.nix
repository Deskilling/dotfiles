{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.email = "81562562+Deskilling@users.noreply.github.com";
      user.name = "Leif Haberecht";
    };
  };

  programs.keychain = {
    enable = true;
    keys = [ "id_ed25519" ];
    extraFlags = [ "--quiet" ];
  };
}
