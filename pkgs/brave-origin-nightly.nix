{ callPackage, fetchurl }:
let
  version = "1.95.44";
  hash = "0f84szl1zs5cyc79ip7gscbwdppl43sv75zrmkiy1n3q3ws5kwzv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
