{ callPackage, fetchurl }:
let
  version = "1.92.138";
  hash = "13m75kvylq6y7fdylmngfrc6d1jx3wgxvxp8pmvhddbsnn9d7h6z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
