{ config
, username
, ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Define the user for nix-darwin
  users.users.${username} = {
    name = username;
    home = "/Users/${username}";
  };

  # Set the state version for nix-darwin
  system.stateVersion = 6;
}
