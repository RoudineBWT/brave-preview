{ callPackage, fetchurl }:
let
  version = "1.93.117";
  hash = "09z041magl07jcsbjb9njvv235h042gk8vr15i11mnvsar0dyk8n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
