{ callPackage, fetchurl }:
let
  version = "1.98.49";
  hash = "0gwv3dkbmn9vh2yx4yy8yk91r5hzapx82q3b0jzh37bafp9a9q43";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
