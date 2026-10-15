{ callPackage, fetchurl }:
let
  version = "1.100.2";
  hash = "1jcsj9j0gs0i4rkkckhn64057hn3bxh88wn4z703cgz6db3kphya";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
