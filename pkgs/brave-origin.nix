{ callPackage, fetchurl }:
let
  version = "1.93.128";
  hash = "1jqrc0bjfzfip4k5bb2804s4zbcrhyyf8vjrczp80dyh6a7hm717";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
