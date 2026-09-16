{ callPackage, fetchurl }:
let
  version = "1.97.39";
  hash = "0pgnnabpkiwzf7j205mh7zbxw17w7m1allfwvh53z9bc4ca63akn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
