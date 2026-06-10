{ callPackage, fetchurl }:
let
  version = "1.92.119";
  hash = "0k3yfd6yri575ahc3bm3k3hb36mv4hgmgyf92r7m3y41s3pslnjl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
