{ callPackage, fetchurl }:
let
  version = "1.93.1";
  hash = "1pqam0fa7wq872simabv8jq7qj2wzfcq70nqsriivr38gpqcr1h5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
