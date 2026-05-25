{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion = {
      enable = true;
    };

    syntaxHighlighting = {
      enable = true;
    };

    historySubstringSearch = {
      enable = true;
    };

    history = {
      size       = 10000;
      save       = 10000;
      path       = "$HOME/.zsh_history";
      share      = true;
      ignoreDups = true;
      ignoreSpace = true;
      append     = true;
    };

    plugins = [
      {
        name = "fzf-tab";
        src = pkgs.zsh-fzf-tab;
        file = "share/fzf-tab/fzf-tab.plugin.zsh";
      }
    ];

    initContent = ''
      unsetopt correct
      setopt autocd interactivecomments

      bindkey '^R' fzf-history-widget

      zstyle ':fzf-tab:*' fzf-flags \
        '--height=40%' \
        '--layout=reverse' \
        '--border=rounded' \
        '--color=bg+:-1,bg:-1,fg:-1,fg+:5' \
        '--color=hl:2,hl+:2,info:3,prompt:5,pointer:5,marker:6' \
        '--color=fg+:5,gutter:-1' \
        '--pointer=→' \
        '--gutter= '

      eval "$(cde-bin init zsh)"
    '';

    shellAliases = {
      rebuild = "nh os switch";
      update = "nh os switch --update";
      config = "sudo -E codium --user-data-dir /home/leif/Documents/VscodeSudo --no-sandbox";
      generations = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
      gcl = "nh clean all";
    };
  };
}
