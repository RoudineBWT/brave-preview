{ callPackage, fetchurl }:
let
  version = "1.95.97";
  hash = "14gkxks1dhwh8kxk5yv6yws2gvy3566fn4kl6ia6d0dgky7chmak";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
