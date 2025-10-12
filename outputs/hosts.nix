{ inputs
, ...
}:
let
  inherit (import ../lib { inherit inputs; }) mkHome;
in
{
  imports = [ ];

  flake = {
    homeConfigurations = {
      mena = mkHome {
        hostName = "mena";
        system = "aarch64-darwin";
        username = "mena";
      };
    };
  };
}
