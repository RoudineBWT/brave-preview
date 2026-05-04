{ callPackage, fetchurl }:
let
  version = "1.92.18";
  hash = "17g1dpib1l18vfkwf9cc18ajmwvhd6dwb6w0cvw9bwhgn7ylxa5a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
