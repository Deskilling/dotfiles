{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    initContent = ''
      source ${pkgs.zinit}/share/zinit/zinit.zsh

      unsetopt correct

      HISTSIZE=10000
      SAVEHIST=10000
      HISTFILE=~/.zsh_history

      setopt appendhistory sharehistory hist_ignore_dups hist_ignore_space autocd interactivecomments

      bindkey '^R' fzf-history-widget

      zinit wait'0a' lucid for \
      zdharma-continuum/fast-syntax-highlighting \
      zsh-users/zsh-autosuggestions \
      zsh-users/zsh-history-substring-search \
      Aloxaf/fzf-tab \
      zsh-users/zsh-completions

      autoload -Uz compinit
      compinit -C
                
      zstyle ':fzf-tab:*' fzf-flags \
      '--color=bg+:-1,bg:-1,fg:-1,fg+:5' \
      '--color=hl:2,hl+:2,info:3,prompt:5,pointer:5,marker:6' \
      '--color=fg+:5,gutter:-1' \
      '--pointer=→' \
      '--border=rounded' \
      '--gutter= '
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
