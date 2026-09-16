{ self, ... }:
let
  fastfetchImage = "isso.png";
in
{

  home.file."./.config/fastfetch/imgs/${fastfetchImage}".source = "${self}/imgs/${fastfetchImage}";

  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "~/.config/fastfetch/imgs/${fastfetchImage}";
        type = "kitty";
        width = 35;
        height = 16;
        padding = {
          top = 1;
        };
      };

      display = {
        separator = "  ";
      };

      modules = [
        "break"
        "break"
        {
          type = "title";
          key = "{#92}  User    ";
          format = "{user-name}  {#2}[{home-dir}]";
        }
        {
          type = "datetime";
          key = "{#92}  Date    ";
          format = "{year}-{month-pretty}-{day-in-month} {hour-pretty}:{minute-pretty}  {#2}[{weekday}]";
        }
        "break"
        {
          type = "title";
          key = "{#93}  Host    ";
          format = "{host-name}";
        }
        {
          type = "os";
          key = "{#93}  OS      ";
          format = "{?pretty-name}{pretty-name}{?}{/pretty-name}{name}{/}  {#2}[{arch}]";
        }
        {
          type = "kernel";
          key = "{#93}  Kernel  ";
          format = "{sysname}  {#2}[v{release}]";
        }
        {
          type = "uptime";
          key = "{#93}  Uptime  ";
          format = "{?days}{days}d {?}{hours}h {minutes}m";
        }
        "break"
        {
          type = "cpu";
          key = "{#91}  CPU     ";
          format = "{name}  {#2}[{freq-max}]";
        }
        {
          type = "gpu";
          key = "{#91}  GPU     ";
          detectionMethod = "auto";
          driverSpecific = true;
          format = "{name}  {#2}[{type}]";
        }
        {
          type = "memory";
          key = "{#91}  Memory  ";
          format = "{used} / {total}  {#2}[{percentage}{#2}]";
        }
        {
          type = "disk";
          key = "{#91}  Disk    ";
          format = "{size-used} / {size-total}  {#2}[{size-percentage}{#2}]";
        }
        "break"
        {
          type = "terminal";
          key = "{#95}  Terminal";
          format = "{pretty-name}  {#2}[{version}]";
        }
        {
          type = "shell";
          key = "{#95}  Shell   ";
          format = "{pretty-name}  {#2}[v{version}]";
        }
        "break"
      ];
    };
  };
}
