{ callPackage, fetchurl }:
let
  version = "1.97.38";
  hash = "0ph0zly587n3hbg0wla7mp1xxjjnzvlryn2fb2924qwa73248bf0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
