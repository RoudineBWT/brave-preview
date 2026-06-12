{ callPackage, fetchurl }:
let
  version = "1.93.61";
  hash = "05363ni2k8dgpx8ipskn9yzsg97s74hsmzicqq1xls36blpf5wpi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
