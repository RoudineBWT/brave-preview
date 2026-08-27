{ callPackage, fetchurl }:
let
  version = "1.96.25";
  hash = "0h0aq0cxzi2bafy4kslnj6dzmc1x0sxhv5svi5ww7qkq3z4ix5kf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
