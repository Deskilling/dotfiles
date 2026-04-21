{ pkgs, ... }:
{
  home.packages = with pkgs; [ qt6Packages.qt6ct ];

  qt = {
    enable = true;
  };

  xdg.configFile."qt5ct/qt5ct.conf".text = ''
    [Appearance]
    color_scheme_path=~/.config/qt5ct/colors/noctalia.conf
    custom_palette=true
    standard_dialogs=default
    style=Fusion
  '';

  xdg.configFile."qt6ct/qt6ct.conf".text = ''
    [Appearance]
    color_scheme_path=~/.config/qt5ct/colors/noctalia.conf
    custom_palette=true
    standard_dialogs=default
    style=Fusion
  '';
}
