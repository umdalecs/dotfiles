{ config, ... }:

{
  programs.home-manager.enable = true;
  home.username = "alecs";
  home.homeDirectory = "/home/alecs";
  home.stateVersion = "26.05";

  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Alejandro Flores";
        email = "dev.alejandro.flores@gmail.com";
      };
      init.defaultBranch = "main";
      core.editor = "nvim";
    };
  };

  home.file = {
    ".zshrc".source = 
      config.lib.file.mkOutOfStoreSymlink ./configs/zsh/.zshrc;
    ".tmux.conf".source =  
      config.lib.file.mkOutOfStoreSymlink ./configs/tmux/.tmux.conf;
  };

  xdg.configFile = {
    "alacritty" = {
      source = config.lib.file.mkOutOfStoreSymlink ./configs/alacritty/.config/alacritty;
      recursive = true;
    };
    "nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink ./configs/nvim/.config/alacritty;
      recursive = true;
    };
  };  
}
