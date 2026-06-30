{ callPackage, fetchurl }:
let
  version = "1.94.16";
  hash = "0g81ydfgd81kxjwkvg3vfwy7wf31k16fnb0aqv15zsa2ghvf44wa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
