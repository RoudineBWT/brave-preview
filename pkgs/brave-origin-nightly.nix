{ callPackage, fetchurl }:
let
  version = "1.93.22";
  hash = "08aacka5gzkglp9k34n0ma3m5qigxr4371ax8zmzb4w5xjb2v0pc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
