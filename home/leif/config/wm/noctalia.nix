{ ... }:
{
  programs.noctalia = {
    enable = true;

    settings = {
      theme = {
        custom_palette = "matugen";
        mode = "dark";
        source = "custom";
      };
    };
  };
}
