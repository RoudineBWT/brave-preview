{ callPackage, fetchurl }:
let
  version = "1.91.142";
  hash = "18lklmkxwaasg8776la4nn20zl4c496v0khfxbwfyid9b8ix2h1m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
