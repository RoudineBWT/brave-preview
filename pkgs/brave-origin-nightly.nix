{ callPackage, fetchurl }:
let
  version = "1.94.37";
  hash = "1xvxiz5wp6vskbdgk5azn8vhiaxvxm6bns2g5s1v5mdivk86nab7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
