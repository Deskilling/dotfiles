{ pkgs, ... }:
{
  gtk.enable = true;
  home.packages = with pkgs; [ adw-gtk3 ];

  xdg.configFile."gtk-4.0/gtk.css".text = ''
    @import url("noctalia.css");
  '';
  xdg.configFile."gtk-3.0/gtk.css".text = ''
    @import url("noctalia.css");
  '';
}
