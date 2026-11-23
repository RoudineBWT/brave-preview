{ callPackage, fetchurl }:
let
  version = "1.101.54";
  hash = "1dljz6bi0s3m05r5s2b43mb8az7ss4yfvxcbbirxq2hb9gwcwcgb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
