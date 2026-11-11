{ callPackage, fetchurl }:
let
  version = "1.101.46";
  hash = "1nkkj52r7yz3lw9jzka3jkimwaa44lv7rrpb48qppymw2q6fa87s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
