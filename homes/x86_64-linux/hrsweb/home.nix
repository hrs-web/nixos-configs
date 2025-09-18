{ config, pkgs, ...}:

{
  home.username = "hrsweb";
  home.homeDirectory = "/home/hrsweb";

  home.packages = with pkgs;[
    firefox
    fastfetch
    wezterm
    fzf
    yazi
    # nisc
    which
    tree
    fish
    vim
  ];

  # git config
  programs.git = {
    enable = true;
    userName = "huangrisheng";
    userEmail = "huangrisheng@z9yun.com";
  };
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}
