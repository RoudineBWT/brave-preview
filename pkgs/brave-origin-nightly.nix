{ callPackage, fetchurl }:
let
  version = "1.95.78";
  hash = "05q7d28c3gcyf15ilnr73n9gc6gh0s65x3mf5qq9dkihznihcfmx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
