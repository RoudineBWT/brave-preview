{ callPackage, fetchurl }:
let
  version = "1.101.48";
  hash = "0hlf3whnr1x8kqzvjrfs3zncmr41rdf35i8csjc3wdqyav42bk6x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
