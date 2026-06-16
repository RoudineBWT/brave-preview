{ callPackage, fetchurl }:
let
  version = "1.93.70";
  hash = "1rvrb485ryfli1zsc2c31ymn9ayxakng0rfz10hzlbvafcvdggs6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
