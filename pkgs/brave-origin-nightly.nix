{ callPackage, fetchurl }:
let
  version = "1.101.8";
  hash = "0qgwjwiwv8v2fdcq9p0z9ig3icz18byan46m9h5av9cn5az16g45";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
