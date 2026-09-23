{ callPackage, fetchurl }:
let
  version = "1.97.46";
  hash = "01idnr5v7p940jfsfvi869saxz8y2ny6d7lnl0b1yq55pfl66xxk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
