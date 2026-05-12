{ callPackage, fetchurl }:
let
  version = "1.92.50";
  hash = "0r2aw3akgb0rvz6msh2dbfryagpaplavmrw3kwi40iicxbwc7a8l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
