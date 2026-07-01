{ callPackage, fetchurl }:
let
  version = "1.92.133";
  hash = "0nwdiqcykz9ljg7r2ykfl33vbhr19pbaz5arvk9swg5xjz0b9pyp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
