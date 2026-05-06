{ callPackage, fetchurl }:
let
  version = "1.92.27";
  hash = "03nq298r4qzn7bax30kj614yjgd4rrjp5z4b34r1r9gqkkd6mrbc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
