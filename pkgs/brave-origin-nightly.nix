{ callPackage, fetchurl }:
let
  version = "1.98.7";
  hash = "0p3xw18flh3c1bicb883x0xxl8xgiw1m9f7v62s6wavqqarx5ldk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
