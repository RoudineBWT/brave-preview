{ callPackage, fetchurl }:
let
  version = "1.95.98";
  hash = "1z7f1h7xw1ip6x8kyhylv4aa6qgjgx66hjkw0na6q4v2mvi44p14";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
