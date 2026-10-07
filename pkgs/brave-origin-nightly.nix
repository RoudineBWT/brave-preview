{ callPackage, fetchurl }:
let
  version = "1.99.20";
  hash = "0x7ga6q9kh299r8qxswjsy5zidr84q50dy24pqq5yfwiy0bzm8gc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
