{ callPackage, fetchurl }:
let
  version = "1.93.137";
  hash = "0wmsisqn7mlxg100x0png56cczdmngh6bl3xfk1w9p3cyy7dhxv7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
