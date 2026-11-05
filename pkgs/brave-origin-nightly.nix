{ callPackage, fetchurl }:
let
  version = "1.101.26";
  hash = "1z17ca24caxkdxh2r7z1agsxw8qa2xjgli4bba8lpvhlwqrwrkag";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
