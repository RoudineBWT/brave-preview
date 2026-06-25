{ callPackage, fetchurl }:
let
  version = "1.94.1";
  hash = "0jn3zhhddj3dq856bdhaas7isb6sx132w8c7jlnwwqqsnxk4x5q2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
