{ callPackage, fetchurl }:
let
  version = "1.95.96";
  hash = "1p6wqhwn4v5wm0yp4lzkazrz3yy4dabjrnvvz9kl1m01nncv3dhd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
