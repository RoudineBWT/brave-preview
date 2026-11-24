{ callPackage, fetchurl }:
let
  version = "1.100.59";
  hash = "0vvk5d5n6z5xhx8r2lgphl6a7cdsda66002i62fawj9lzh5aaf6f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
