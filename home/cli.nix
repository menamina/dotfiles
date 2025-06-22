{ pkgs, ... }: {
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  home.packages = with pkgs; [
    # android-tools  # May have Linux dependencies
    clang
    gnumake

    himalaya

    neofetch
    readline
    typst

    unzip
    wget
    zellij
  ];
}
