{ callPackage, fetchurl }:
let
  version = "1.92.110";
  hash = "1kzlka0530vrbd8ldj7h6nr3z4700rm6rl0vy0sgckcz1b64qk3g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
