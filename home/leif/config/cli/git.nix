{ ... }:
{
  programs.git = {
    enable = true;
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
