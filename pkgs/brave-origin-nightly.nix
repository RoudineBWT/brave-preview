{ callPackage, fetchurl }:
let
  version = "1.99.32";
  hash = "12f7f241g1g6zb6gz8rv1zjjik78cc19yqdd4nhmaxrgm3pqiriv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
