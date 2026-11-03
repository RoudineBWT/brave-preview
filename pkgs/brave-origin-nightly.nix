{ callPackage, fetchurl }:
let
  version = "1.101.18";
  hash = "0514cb4nrwgvgsdsvdci6s1b3p387873q0lv14qy5jdml3hihxhd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
