{ callPackage, fetchurl }:
let
  version = "1.92.124";
  hash = "15l9klhfmf5r8wg903hf4cn5frksc3dwxy3fhwza72s0wrw2k0k5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
