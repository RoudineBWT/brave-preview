{ callPackage, fetchurl }:
let
  version = "1.93.93";
  hash = "1zvsh77974sk2vrwavji59xmp7kqn3ypk9lmnj246bsbq27g5v1d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
