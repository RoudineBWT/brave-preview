{ callPackage, fetchurl }:
let
  version = "1.94.90";
  hash = "0hji1bgsrs00mh55nkkmskskblv49wg27gc7wv8ap7jsm0f9fcx6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
