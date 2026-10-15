{ callPackage, fetchurl }:
let
  version = "1.100.1";
  hash = "1f6lb5748r885swwd36nqyrm465vxnrjf3dyy3z18826ndpa13b5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
