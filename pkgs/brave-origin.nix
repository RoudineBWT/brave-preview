{ callPackage, fetchurl }:
let
  version = "1.91.165";
  hash = "0z29v6jb0ydnk6l5y016ihwlfg70xzx2ymvkq742i135mdwqzllf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
