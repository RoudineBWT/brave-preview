{ callPackage, fetchurl }:
let
  version = "1.95.16";
  hash = "1vggwdav9b7fnz8lzx17sj2zrw2kzanv6284cq76mzn6ypdxcc2g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
