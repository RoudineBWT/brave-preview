{ callPackage, fetchurl }:
let
  version = "1.92.94";
  hash = "0cr0lksskszvmvjb4m80ykk1wb0gi341nay6qjglsy0h5n9rlvib";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
