{ callPackage, fetchurl }:
let
  version = "1.95.33";
  hash = "060x4jl2fxllv9d9pci7pfkcjns1ac3x02qkisng0gyvgcnyalxv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
