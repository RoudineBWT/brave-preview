{ callPackage, fetchurl }:
let
  version = "1.94.103";
  hash = "09s3z10vic5bmmh0snvrm6kgsipy9k1vrmhpyzjskbw6m2cb0630";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
