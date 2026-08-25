{ callPackage, fetchurl }:
let
  version = "1.95.90";
  hash = "0ilzkh2kjn6xa21kh3pfzrka6g55g2py781mkzmaphql8wg9w8f6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
