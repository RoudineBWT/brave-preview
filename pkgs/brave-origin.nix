{ callPackage, fetchurl }:
let
  version = "1.92.132";
  hash = "14wrpxbg42lh4kq9i8z8mj0p48mlgpp81pg0hz4rv8inw4f6dh01";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
