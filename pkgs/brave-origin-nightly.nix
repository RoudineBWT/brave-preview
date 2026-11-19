{ callPackage, fetchurl }:
let
  version = "1.102.24";
  hash = "0wkg7s63cg4f3bnynx6pf1ybd6ic3p02y6gckfrl8vxqq5129xpp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
