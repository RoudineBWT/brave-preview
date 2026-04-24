{ callPackage, fetchurl }:
let
  version = "1.91.109";
  hash = "1ahs3n9x1v2fdl3jvsvq3qcdcvm3ag179r189466vaw3b7anyqpb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
