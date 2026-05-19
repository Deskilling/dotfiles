{ pkgs, ... }:
{
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;

    options = [ "--cmd cd" ];
  };

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

  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      add_newline = false;

      format = ''
        [╭](dimmed) $username@$hostname $directory$env_var
        [╰](dimmed) $character
      '';

      username = {
        show_always = true;
        format = "[$user](fg:5)";
      };

      hostname = {
        ssh_only = false;
        format = "$hostname";
      };

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
        format = "[$path](fg:5) ";
      };

      character = {
        success_symbol = "[❯](fg:2)";
        error_symbol = "[❯](fg:1)";
      };

      env_var = {
        variable = "DIRENV_DIR";
        format = "[❄ flake](fg:4)";
      };
    };
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  programs.nh = {
    enable = true;
    flake = "/etc/nixos";
    clean = {
      enable = true;
      extraArgs = "--keep-since 14d";
    };
  };

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
      config = "udo -E codium --user-data-dir /home/leif/Documents/VscodeSudo --no-sandbox";
      generations = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
      gcl = "nh clean all";
    };
  };
}
