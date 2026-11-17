{ callPackage, fetchurl }:
let
  version = "1.101.50";
  hash = "0iijg9iiv3cfbl6aiabx74ica543k0v7hrc7n37b9fc5l6hrgccn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
