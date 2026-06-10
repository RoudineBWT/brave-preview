{ callPackage, fetchurl }:
let
  version = "1.93.52";
  hash = "0hvrq7shj682i9vp1xdcl26fmfaj2aqxrwv2s815s3rkhb5mkyc5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
