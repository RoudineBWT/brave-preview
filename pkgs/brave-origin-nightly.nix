{ callPackage, fetchurl }:
let
  version = "1.94.27";
  hash = "0s8ic425znydybpdd4ipyscl9zd5sclv79yx2cc7k9a3gxbq6wf7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
