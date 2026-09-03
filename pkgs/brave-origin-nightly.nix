{ callPackage, fetchurl }:
let
  version = "1.96.44";
  hash = "0wz59wzn6w5rkfhgb0nqwlby2q2ma50aydprj926805x0cricvm8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
