{ callPackage, fetchurl }:
let
  version = "1.96.57";
  hash = "08jc7cvzlprlykq341l047fylabzrh6snk778763ggvgpxfchbiy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
