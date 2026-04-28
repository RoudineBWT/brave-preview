{ callPackage, fetchurl }:
let
  version = "1.91.120";
  hash = "0j6bdhlsnmfblpq6fb4ll89abwlr7ng3996yy3gzmzlliibyrz98";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
