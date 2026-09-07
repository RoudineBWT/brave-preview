{ callPackage, fetchurl }:
let
  version = "1.97.12";
  hash = "0hg0ibdi09dj5hlc40wfbxak8kq5apjwh95ssanpbd1smqz395hc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
