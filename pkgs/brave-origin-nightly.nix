{ callPackage, fetchurl }:
let
  version = "1.95.47";
  hash = "0c4hva6wn9kia8fl38x0x44l2a2x6x0asi1v926pfkwfj2wpry4f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
