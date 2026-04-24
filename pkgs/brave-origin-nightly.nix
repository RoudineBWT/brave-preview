{ callPackage, fetchurl }:
let
  version = "1.91.111";
  hash = "0d83k83r8dk3jr9bbfk9f615v5l22ycfms2isj53zfzcxg1nl8mc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
