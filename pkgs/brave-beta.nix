{ callPackage, fetchurl }:
let
  version = "1.92.117";
  hash = "1jlm941vialjbix1jdk7r2x4cc6mhb5ccw8fd51gl63dw96a8v6q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
