{ callPackage, fetchurl }:
let
  version = "1.98.33";
  hash = "1fd3r8xv9ba8rayyncadwiqsnbk47lwx8pjz8gxzbxj7hdpyvldb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
