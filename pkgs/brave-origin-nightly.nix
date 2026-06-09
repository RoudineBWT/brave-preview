{ callPackage, fetchurl }:
let
  version = "1.93.43";
  hash = "0qgy7r3ccc2b1akhrmsqi9ydpimv4brmdqg8mqh3jgvk19f0sjpj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
