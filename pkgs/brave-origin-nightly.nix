{ callPackage, fetchurl }:
let
  version = "1.97.14";
  hash = "0nfmhq77vifszxy4i0qvkv4q69b76c6g37zb797szawy7yffxx5p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
