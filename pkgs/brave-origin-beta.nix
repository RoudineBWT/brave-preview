{ callPackage, fetchurl }:
let
  version = "1.100.49";
  hash = "13gi8g7fryd40mf762irynmk7jiff2cpfvmx8kbzizgq6l5045kz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
