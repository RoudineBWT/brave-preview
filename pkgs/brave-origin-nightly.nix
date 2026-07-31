{ callPackage, fetchurl }:
let
  version = "1.95.29";
  hash = "0078gz1p6zblbahsc6w04ln610bwfjkcf01hl2zqajgiq8a5xf8i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
