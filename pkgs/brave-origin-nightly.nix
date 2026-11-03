{ callPackage, fetchurl }:
let
  version = "1.101.20";
  hash = "08lhbiqkj743fc4wzbxrqdfi8as9j6mfac5ihhj6ssv5qv6h1bm9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
