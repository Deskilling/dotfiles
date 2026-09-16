{pkgs, ...}:
{
  home.packages = with pkgs; [
    qt6.qtdeclarative
  ];

  programs.quickshell = {
    enable = true;
  };
}
