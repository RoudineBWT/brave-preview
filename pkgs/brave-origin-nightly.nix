{ callPackage, fetchurl }:
let
  version = "1.101.7";
  hash = "154769jrd4by23aa72xz3wwx8ip7iyjng3wyan554xnj7dhhmrvj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
