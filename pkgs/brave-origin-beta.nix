{ callPackage, fetchurl }:
let
  version = "1.91.153";
  hash = "1jwdnn8h12jj5x83lzml9j9ds2dwbwwhjdr9i2f1icg1rn8jpf13";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
