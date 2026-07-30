{ callPackage, fetchurl }:
let
  version = "1.95.25";
  hash = "0jggdj9nd263cwciq5a7p8yrg86n2pdnn1f0r56qf0yp5h6c7bpg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
