{ callPackage, fetchurl }:
let
  version = "1.96.33";
  hash = "0kz294pa3shcc9ryzpjqg7whmxnsvb8g57p8jgxvq2sk5gsn1vvp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
