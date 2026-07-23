{ callPackage, fetchurl }:
let
  version = "1.95.1";
  hash = "1p3ifwipnqfpk9kpkq1cf82896788il02q932d6gkg06d1jcagmk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
