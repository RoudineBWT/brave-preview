{ callPackage, fetchurl }:
let
  version = "1.92.108";
  hash = "1vpb9q2rg4sijrf7jswaxy6rrvs56wh0z27hz9kcams4s0l0xqdh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
