{ callPackage, fetchurl }:
let
  version = "1.102.2";
  hash = "1x0413qlj7hh8rd96c2knm7xcjvrxnmlib947gk0zs9b7d99x20n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
