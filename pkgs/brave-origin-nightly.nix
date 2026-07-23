{ callPackage, fetchurl }:
let
  version = "1.95.4";
  hash = "0n29b45v42kmnhkbri720v83h311p70c2ffly11279avsppqaa3f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
