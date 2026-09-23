{ callPackage, fetchurl }:
let
  version = "1.97.46";
  hash = "1zqqawxj4m4j5bbx7mdsdr643zpn7w13wcs5nglnr7phiq5dz400";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
