{ callPackage, fetchurl }:
let
  version = "1.100.5";
  hash = "07fbyj51w84jqp3n9vm83mn5cymka6h53zr241qpg9hb8max57ag";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
