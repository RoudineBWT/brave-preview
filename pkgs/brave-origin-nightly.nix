{ callPackage, fetchurl }:
let
  version = "1.93.88";
  hash = "1l754da5f725jcc21cb5d8b45j2pgdwzikpkmdq2jmnhy0zyfvdi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
