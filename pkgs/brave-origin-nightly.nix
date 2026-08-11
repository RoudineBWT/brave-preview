{ callPackage, fetchurl }:
let
  version = "1.95.60";
  hash = "0rhhznlsrkwdvdpfdy3wnigfdrl73jsyxa5v365x0gvsxfvw1d5r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
