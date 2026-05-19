{ ... }:
{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;

    defaultOptions = [
      "--color=bg+:-1,bg:-1,fg:-1,fg+:5"
      "--color=hl:2,hl+:2,info:3,prompt:5,pointer:5,marker:6"
      "--pointer '→'"
      "--gutter ' '"
    ];
  };
}
