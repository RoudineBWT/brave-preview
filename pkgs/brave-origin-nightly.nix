{ callPackage, fetchurl }:
let
  version = "1.101.10";
  hash = "0cf4cxpy6gq77craxriak3c79i2y48hycmh7qz85ygcjcailkj4p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
