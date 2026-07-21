{ callPackage, fetchurl }:
let
  version = "1.94.86";
  hash = "1ii4wsfpbb4zzgxpy7zlnbabb9528kpcr2m6qwg0ja8g578ib2jx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
