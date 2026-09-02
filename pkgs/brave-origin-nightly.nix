{ callPackage, fetchurl }:
let
  version = "1.96.39";
  hash = "1z00n8zn70z69nrc8nw05ya3sv1mc5ns59ap4dzidmbf72r7blvy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
