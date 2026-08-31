{ callPackage, fetchurl }:
let
  version = "1.96.30";
  hash = "1ir9jyk5m9rxld6r9l9244c8w7pg3kd7cl8m2kpwk1q7wk0bk6p3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
