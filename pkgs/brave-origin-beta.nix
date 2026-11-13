{ callPackage, fetchurl }:
let
  version = "1.101.48";
  hash = "014xqig1rgnw889vqg0kd80h9l7f0ar4l7r7hsq5yk6kf95byvrr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
