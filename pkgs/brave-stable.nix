{ callPackage, fetchurl }:
let
  version = "1.91.164";
  hash = "1ccbiqs1zy5981c2milavr57b4mvfjahrk73yf54slnxq47j0m6g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
