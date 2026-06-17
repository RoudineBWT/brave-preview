{ callPackage, fetchurl }:
let
  version = "1.93.78";
  hash = "1n2y7hkwy2hdazrvl34mp9164634fib2ain447vvqa3xq5600rvn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
