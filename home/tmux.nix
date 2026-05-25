{ ... }: {
  programs.tmux = {
    enable = true;
    mouse = true;
    terminal = "tmux-256color";
    keyMode = "vi";
    prefix = "C-a";
    escapeTime = 0;
    historyLimit = 10000;
  };
}
