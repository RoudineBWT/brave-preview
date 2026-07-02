{ callPackage, fetchurl }:
let
  version = "1.94.30";
  hash = "11akjw9c9fc5mank7rmbh6gjbdcz3lrpbg0bq8yjj377vb5pywy1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
