{ pkgs, ... }: {
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  home.packages = with pkgs; [
    gcc
    gnumake
    neofetch
    postgresql

    unzip
    wget
    zellij

    cargo
    rustc
  ];
}
