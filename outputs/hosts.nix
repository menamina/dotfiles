{ inputs
, ...
}:
let
  inherit (import ../lib { inherit inputs; }) mkSystem;
in
{
  imports = [ ];

  flake = {
    darwinConfigurations = {
      mena = mkSystem {
        hostName = "mena";
        system = "aarch64-darwin";
        username = "mena";
      };
    };
  };
}
