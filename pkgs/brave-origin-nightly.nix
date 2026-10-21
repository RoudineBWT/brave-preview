{ callPackage, fetchurl }:
let
  version = "1.100.23";
  hash = "1i5kw89ypf4wzcvxrps2a0yj0i2k6ir5n2whk67zg3wmaf2yxcqk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
