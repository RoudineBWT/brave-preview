{ callPackage, fetchurl }:
let
  version = "1.100.6";
  hash = "0qi8j5vjb6jk17k4kwgjwcpy2kl8yxrzrwdk7s7cn25kxq69bwz6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
