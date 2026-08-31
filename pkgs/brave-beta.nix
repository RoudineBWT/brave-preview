{ callPackage, fetchurl }:
let
  version = "1.95.95";
  hash = "0rq3cpmdyi91cx7n86rhr9dvmwbnfsalm0ilm4s99gmgf0vyc17k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
