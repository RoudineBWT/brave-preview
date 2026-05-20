{ callPackage, fetchurl }:
let
  version = "1.92.81";
  hash = "0ksm4xzrz3cx6qmbzijq7m3qsicc76z9xycxb3ib8m882wgn3fbd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
