{ callPackage, fetchurl }:
let
  version = "1.95.5";
  hash = "16sp3mjzyzbqyydwq8y1zi6bpl1r7pbsnlg7vm2bnls33pc5lbl8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
