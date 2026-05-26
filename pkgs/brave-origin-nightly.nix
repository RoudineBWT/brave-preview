{ callPackage, fetchurl }:
let
  version = "1.92.99";
  hash = "0lx903fn2xr3992zb4am0gk4ik330pkfrgb8y561qcld6na3i4w4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
