{ callPackage, fetchurl }:
let
  version = "1.101.38";
  hash = "1bn56j0m2yfwshzmfa8hp95ijc97n9kv24j1ipmr824zparwsv1h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
