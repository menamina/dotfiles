{ ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      export PATH="$HOME/.npm-packages/bin:$PATH"
    '';
  };

  programs.atuin = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      auto_sync = true;
      sync_frequency = "5m";
      search_mode = "fuzzy";
      filter_mode_shell_up_key_binding = "directory";
      style = "compact";
    };
  };
}
