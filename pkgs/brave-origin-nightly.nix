{ callPackage, fetchurl }:
let
  version = "1.92.49";
  hash = "1smk7hx5rqz0nms0r26dgc3x8qq6k0hwp4xnrhcvdy2q68qynywd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
