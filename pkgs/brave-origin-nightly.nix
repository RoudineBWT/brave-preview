{ callPackage, fetchurl }:
let
  version = "1.95.82";
  hash = "154fzzr65d49bxd6rjnlp23ld7isv7d3s5a75hkgqwl2dldg1krq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
