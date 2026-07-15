{ callPackage, fetchurl }:
let
  version = "1.94.72";
  hash = "1jh1mpyw3vzf9aahpis6icqmdnfm5mamxcvfhzlfdmpmcivq81fc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
