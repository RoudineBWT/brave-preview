{ callPackage, fetchurl }:
let
  version = "1.96.47";
  hash = "0fbq8ddmc7z0qqy5kpwbgd44ki8mzkim4qgk3svk0smicqhz95zx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
