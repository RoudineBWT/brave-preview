{ callPackage, fetchurl }:
let
  version = "1.95.92";
  hash = "0ki110408ihs0kcrna1drsr0p7di7sn9l2114wv1dhh80pk7ikyv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
