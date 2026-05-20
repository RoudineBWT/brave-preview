{ callPackage, fetchurl }:
let
  version = "1.92.79";
  hash = "1plyc4ynyr44s0nvzbb8xnp857la2qrcmrmp8b33pbg85yvbfq17";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
