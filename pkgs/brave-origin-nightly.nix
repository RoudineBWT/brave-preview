{ callPackage, fetchurl }:
let
  version = "1.93.101";
  hash = "0bygh2flk06i3fcaci9hdq03kjasbqq9bhgjrqnn8darz1rsqj77";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
