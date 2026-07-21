{ callPackage, fetchurl }:
let
  version = "1.93.123";
  hash = "149wphasm3db5g6whd3asp32wk1yzhsfjw4zgyasa4y7ikbkyi70";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
