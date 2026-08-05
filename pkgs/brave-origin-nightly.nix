{ callPackage, fetchurl }:
let
  version = "1.95.41";
  hash = "0j41b9mzf78n9pi6279kgbgqkwhx74gr7575113rapk3fip5q90x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
