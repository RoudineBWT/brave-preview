{ callPackage, fetchurl }:
let
  version = "1.94.70";
  hash = "1lf8wwymlwz39xz3md7jqrasakk89361is512n85h3mm6qpv936w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
