{ callPackage, fetchurl }:
let
  version = "1.92.10";
  hash = "05x3rm41sxnxp0fvfr5v0672dpcblqxn021f5l1mkvv7n793kbbm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
