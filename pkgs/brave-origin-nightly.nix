{ callPackage, fetchurl }:
let
  version = "1.100.17";
  hash = "07la9b4x2wf61ca9cg9pxg3i9amz3zc24i7yyksvx02j92yzgimh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
