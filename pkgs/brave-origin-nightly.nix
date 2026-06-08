{ callPackage, fetchurl }:
let
  version = "1.93.38";
  hash = "0s194n2vmbhw11767zxchwkzsfzzf9v1q07baqcyx7v3s045gcs5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
