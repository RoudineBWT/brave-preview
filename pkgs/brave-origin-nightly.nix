{ callPackage, fetchurl }:
let
  version = "1.92.54";
  hash = "0bsk1kaj1365g0bll8fdb3ddn4mj8mj6y57zgih4531mqfwnnxic";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
