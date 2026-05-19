{ ... }:
{
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "noctalia";
      theme_background = false;

      mem_below_net = true;

      proc_left = true;
      proc_sorting = "memory";
      proc_filter_kernel = true;
    };
  };
}
