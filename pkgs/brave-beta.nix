{ callPackage, fetchurl }:
let
  version = "1.91.146";
  hash = "1w0kljx1yb231dlgbmbnr7lxv7aj84zn7hk1d58bl9rk0kccnrkw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
