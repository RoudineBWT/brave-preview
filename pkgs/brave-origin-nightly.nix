{ callPackage, fetchurl }:
let
  version = "1.95.6";
  hash = "11890dnmc61bdbcdfhvbdka48iknlfgcfrabyxnl77asaxkwz12v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
