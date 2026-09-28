{ callPackage, fetchurl }:
let
  version = "1.97.49";
  hash = "1pnmvv2srk8lbijkwafs0v59q4dvy14xv7pn47n52mmsg0xgw6ip";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
