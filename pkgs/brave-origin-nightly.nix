{ callPackage, fetchurl }:
let
  version = "1.97.26";
  hash = "08j5qc5ncv5z7jx772bxw43yjph1fifzrxxyd2qpcxgi8w4yjq4k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
