{ callPackage, fetchurl }:
let
  version = "1.93.115";
  hash = "0xlbq1l013ymkc90yfkapdayixsxa5fybx96jqiiz6142kxz03lr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
