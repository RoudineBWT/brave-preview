{ callPackage, fetchurl }:
let
  version = "1.93.67";
  hash = "1pnc7rc6k3xi4d55kf0pivwnkviy5vag6s9q6j8wb7ana59avvmf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
