{ callPackage, fetchurl }:
let
  version = "1.97.34";
  hash = "1zxbr0i72rl7i0kc25mh7vw15vliyh9sqk1ah10agf68m849sadd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
