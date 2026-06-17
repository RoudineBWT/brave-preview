{ callPackage, fetchurl }:
let
  version = "1.93.75";
  hash = "1q8i4kw8jc4jm5s9ja8vchgn900mlqipijy536j70fqghhjkcrds";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
