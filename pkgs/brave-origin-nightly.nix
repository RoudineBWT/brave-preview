{ callPackage, fetchurl }:
let
  version = "1.95.18";
  hash = "196vja61761rm5qz0i2aagqh3fgna7n7rcihyy20s4v2hcig4gla";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
