{ callPackage, fetchurl }:
let
  version = "1.91.134";
  hash = "08l0d4ck4hvr5bdd63ymz57ciqnhdigkg1xg4d1943gic342rr9c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
