{ callPackage, fetchurl }:
let
  version = "1.94.117";
  hash = "094kxhfpw9mhcc3wr4nwnlskhsm1h1n7xhqq2lh4ljsrjglif034";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
