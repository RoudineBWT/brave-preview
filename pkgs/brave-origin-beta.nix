{ callPackage, fetchurl }:
let
  version = "1.92.111";
  hash = "1f8zfwm26bh236kma49qvjwdqig23362cmc79hq4lc3gxlh08kc9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
