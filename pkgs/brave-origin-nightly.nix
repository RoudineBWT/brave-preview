{ callPackage, fetchurl }:
let
  version = "1.95.67";
  hash = "1gqhwark7643mnr6s7mhmypgw0ayrx2yy0msn7jzyl3997gc94x4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
