{ callPackage, fetchurl }:
let
  version = "1.95.98";
  hash = "0i1z0nnhfa0g9q7jbp3cjybv50maanbnwrshvf0sdlxzb75ggis1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
