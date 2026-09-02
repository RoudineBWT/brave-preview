{ callPackage, fetchurl }:
let
  version = "1.96.38";
  hash = "0d53g98l8j0zhsszyn2vk9wvmpgvwa08vck8dgxclc90wrpqvy91";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
