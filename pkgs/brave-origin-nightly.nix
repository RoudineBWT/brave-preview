{ callPackage, fetchurl }:
let
  version = "1.95.69";
  hash = "12w56m8zfy407g1m8w5nk9c0plrbcly7slmznw3yls1017wjw7k4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
