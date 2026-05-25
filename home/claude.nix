{ config, inputs, lib, pkgs, system, ... }:
let
  claudeSettingsPath = "${config.home.homeDirectory}/dotfiles/home/claude-settings.json";
in
{
  home = {
    packages = [ inputs.claude-code.packages.${system}.default ];

    sessionPath = lib.mkIf pkgs.stdenv.isDarwin [
      "$HOME/.local/bin"
    ];

    file = {
      ".claude/settings.json".source =
        config.lib.file.mkOutOfStoreSymlink claudeSettingsPath;
    };

    shellAliases = {
      claudepb = ''claude "$(pbpaste)"'';
    };
  };

  programs.git.ignores = [
    ".claude/settings.local.json"
    "CLAUDE.local.md"
  ];
}
