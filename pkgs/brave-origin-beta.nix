{ callPackage, fetchurl }:
let
  version = "1.96.51";
  hash = "01801f4xkfb3xnnbqhs61mz7ayyjlclp4qd6nwy6wg084g8sb34q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
