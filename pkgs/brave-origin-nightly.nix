{ callPackage, fetchurl }:
let
  version = "1.93.32";
  hash = "182bha0wfi0j7kapazcq1i2aw6ywfbi8sbj4dva6xn80dk58v8wj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
