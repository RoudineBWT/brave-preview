{ callPackage, fetchurl }:
let
  version = "1.92.12";
  hash = "0j8rcwk7p48hrn89rxhjvgq4d9avhlpmm6m5vwrl6cpy7jlgjgxh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
