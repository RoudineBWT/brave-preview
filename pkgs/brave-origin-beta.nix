{ callPackage, fetchurl }:
let
  version = "1.98.51";
  hash = "1iz0vx7qg051wc08zb57cw433hz90m3dvhqcwvxpdp1wji54713a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
