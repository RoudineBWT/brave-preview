{ callPackage, fetchurl }:
let
  version = "1.102.16";
  hash = "1vycf68gf31isidikv6fi4xrjprmkyacd9dhaw97ihy1v4i10yah";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
