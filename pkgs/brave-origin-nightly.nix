{ callPackage, fetchurl }:
let
  version = "1.98.40";
  hash = "1w00gdsf1krad4vk2gijf4h4jw6yncndxk02b151pig4mivrc5h5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
