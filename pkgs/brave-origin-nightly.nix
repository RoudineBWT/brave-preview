{ callPackage, fetchurl }:
let
  version = "1.94.77";
  hash = "1c0jd0dh26kn429jijqm4pffg5zrj4qkjq66ka6f6rzzf8q2lh4d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
