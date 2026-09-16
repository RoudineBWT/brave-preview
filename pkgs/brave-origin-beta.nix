{ callPackage, fetchurl }:
let
  version = "1.96.54";
  hash = "0zs77isyw4w04sbl843dldxc6ic870w04mzs2pf0gqj3z7cckz16";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
