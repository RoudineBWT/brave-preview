{ callPackage, fetchurl }:
let
  version = "1.95.84";
  hash = "0pkhbynx9lqp142ljsa1f8c3bxvnv0pgl753lv7kvcyfrjjswsnp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
