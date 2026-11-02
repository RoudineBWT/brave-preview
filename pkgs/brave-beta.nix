{ callPackage, fetchurl }:
let
  version = "1.100.46";
  hash = "1j7ky7w26gs06cfiwihpl4mwg5xinv0qim4cqvrrc7w62a2mwibf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
