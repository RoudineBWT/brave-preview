{ callPackage, fetchurl }:
let
  version = "1.94.33";
  hash = "0543rfz292fm10ahrr0f3v06pjh4nn9s8nbkv41zwbfiiin2m6z5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
