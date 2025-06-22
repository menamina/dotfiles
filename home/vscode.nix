{ pkgs
, ...
}: {
  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        catppuccin.catppuccin-vsc
        tamasfe.even-better-toml
      ];
      userSettings = {
        "window.autoDetectColorScheme" = true;
        "workbench.preferredDarkColorTheme" = "Catppuccin Mocha";
        "workbench.preferredLightColorTheme" = "Catppuccin Latte";
      };
    };
  };
}
