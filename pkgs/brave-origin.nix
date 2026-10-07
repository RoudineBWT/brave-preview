{ callPackage, fetchurl }:
let
  version = "1.97.56";
  hash = "071m0vk7xmvbmd62qc6avxhhx9fa46fgs4mjci2mivcdsdcnjj26";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
