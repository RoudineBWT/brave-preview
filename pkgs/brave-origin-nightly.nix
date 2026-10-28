{ callPackage, fetchurl }:
let
  version = "1.100.40";
  hash = "1ffqfp20l5l39r5dwk5jyr8cm6z6m9zzzn38045hv1j7hm5s1l08";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
