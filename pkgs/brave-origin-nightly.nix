{ callPackage, fetchurl }:
let
  version = "1.97.22";
  hash = "158l9yrs372cpvrkaw9ywhr13ycv3w8847v6aybb7dq1j8dg20cf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
