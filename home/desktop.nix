{ pkgs
, ...
}: {
  home.packages = with pkgs; [
    # steam  # Linux-only, not available on macOS
  ];
}
