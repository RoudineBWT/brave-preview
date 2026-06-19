{ callPackage, fetchurl }:
let
  version = "1.93.85";
  hash = "0c3dzgin6fx01k10qx25fhkal9jj0jfbh5hn5lma5m972ilv7856";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
