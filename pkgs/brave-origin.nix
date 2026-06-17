{ callPackage, fetchurl }:
let
  version = "1.91.175";
  hash = "0wwhjlxcrhfgzf0rw4v2ply35s6fcj8q9xgfh9kxqwf036d1ihsv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
