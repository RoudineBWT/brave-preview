{ callPackage, fetchurl }:
let
  version = "1.102.26";
  hash = "04grqxzi78ysifmq8p7flqqa82sf500zy2bbrg50wk7hg6pngbb5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
