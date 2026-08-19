{ callPackage, fetchurl }:
let
  version = "1.95.86";
  hash = "1gj72if3y65pkmydkvyjmqg74k39fbshjmqv652pwwh462rm6657";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
