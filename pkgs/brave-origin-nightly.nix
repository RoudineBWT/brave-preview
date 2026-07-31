{ callPackage, fetchurl }:
let
  version = "1.95.26";
  hash = "09aq84h3mzqmms3dwbhcf4vxn2nv53w8x4b8gmia82qkjc5fxds7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
