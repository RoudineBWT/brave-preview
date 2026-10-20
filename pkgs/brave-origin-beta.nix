{ callPackage, fetchurl }:
let
  version = "1.99.47";
  hash = "1dfdq10nf3jdfq5zzf1s07yx9jsbf80i9yn4wzwfm75pyjh4dr41";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
