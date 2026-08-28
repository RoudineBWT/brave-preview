{ callPackage, fetchurl }:
let
  version = "1.96.26";
  hash = "0l5zlhbn962lxmlq8i0nq49by0canavdkhrqrhqpvcgdhsrgs2g5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
