{ callPackage, fetchurl }:
let
  version = "1.96.29";
  hash = "0lq08bcia6ljl2hxq6z3nyq22x0mb993mnj7qlrw7rwfsp77babp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
