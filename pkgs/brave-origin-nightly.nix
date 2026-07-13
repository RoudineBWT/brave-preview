{ callPackage, fetchurl }:
let
  version = "1.94.64";
  hash = "05hnh2lzr5nxr5x88fk120wi2lifvmvp685ranmia38rnpayyqji";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
