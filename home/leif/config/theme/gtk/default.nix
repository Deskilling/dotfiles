{ pkgs, ... }:
{
  gtk = {
    enable = true;
    font = {
      name = "Inter";
      package = pkgs.inter;
    };
    iconTheme = {
      name = "Fluent";
      package = pkgs.fluent-icon-theme;
    };
  };

  home.packages = with pkgs; [
    adw-gtk3
    adwaita-icon-theme
    hicolor-icon-theme
  ];

  xdg.configFile."gtk-4.0/gtk.css".text = ''
    @import url("matugen.css");
  '';
  xdg.configFile."gtk-3.0/gtk.css".text = ''
    @import url("matugen.css");
  '';
}
