{ callPackage, fetchurl }:
let
  version = "1.96.4";
  hash = "0w6my2asqh6k3v5wz06d9svq4anbppysjpyvbzpfm005kcwxsz7c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
