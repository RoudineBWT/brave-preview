{ callPackage, fetchurl }:
let
  version = "1.101.22";
  hash = "0ix20zkq5lclhbl2b0kfhd0x21yhdv8kcmgdqg50w4xrjqdjmrz1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
