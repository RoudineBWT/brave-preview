{ callPackage, fetchurl }:
let
  version = "1.94.104";
  hash = "15y5f849q7fhj4dgki22hxqfg4rlipd6w9ls8qglbznwrcbzdclw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
