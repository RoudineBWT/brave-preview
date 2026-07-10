{ callPackage, fetchurl }:
let
  version = "1.94.59";
  hash = "15acyklb10fz5pz0vmjv4sm7i9xrw6gg6cx9fh89k9hisizsdh33";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
