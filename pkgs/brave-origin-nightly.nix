{ callPackage, fetchurl }:
let
  version = "1.98.39";
  hash = "0lkibyfpfj8xcp2lm3wgkdzh7z096di8xgwpk1ysy9lrd7dfga1i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
