{ config, pkgs, ... }:
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "mohsen";
  home.homeDirectory = "/home/mohsen";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # LazyVim
    neovim
    tree-sitter # neovim dependency
    xclip # neovim dependency
    fd # Alternative to find, lazyvim dependency
    ripgrep

    # Utile
    lazygit
    lazydocker
    joshuto # terminal file manager
    # dua # disk usage analyzer, usage: `dua i`
    atac # tui alt of postman
    taplo # toml toolkit (validator, formatter)
    # gobang # TUI database management tool

    # Bash ls
    bash-language-server
    shellcheck # bash-language-server dependency

    # # TMUX
    # tmux
    # tmux-mem-cpu-load # dependency for tmux-powerline (will install by tpm)

    # # Starship
    # starship
  ];

  home.file = {
    # LazyVim
    ".config/nvim/ftplugin".source = dotfiles/nvim/ftplugin;
    ".config/nvim/lua".source = dotfiles/nvim/lua;
    ".config/nvim/init.lua".source = dotfiles/nvim/init.lua;

    # # TMUX
    # ".tmux.conf".source = dotfiles/tmux.conf;
    # ".tpm".source = dotfiles/tpm;
    # ".config/tmux-powerline".source = dotfiles/tmux-powerline;

    # ".gitconfig".source = dotfiles/gitconfig;
  };

  # it works if this be enabled
  # programs.bash.enable = true;
  home.sessionVariables = { };

  # Let Home Manager install and manage itself.
  # programs.home-manager.enable = true;
  programs = {
    home-manager.enable = true;
  };
}
