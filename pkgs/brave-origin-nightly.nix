{ callPackage, fetchurl }:
let
  version = "1.97.35";
  hash = "03x1xv9gq1kqil9sy6x5awbac7hi8awa2v6yhb0z8xafpd2hyw7s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
