{ callPackage, fetchurl }:
let
  version = "1.93.96";
  hash = "18p1ngl00s145g8p0mprd39iqfv96sgbqbkkf95pwxxanmr23wgb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
