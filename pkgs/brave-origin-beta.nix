{ callPackage, fetchurl }:
let
  version = "1.91.135";
  hash = "0h9pa7my1pd2n2f4janrrh2vkfv1fcglbddvxh9yd31rbzx8bcqn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
