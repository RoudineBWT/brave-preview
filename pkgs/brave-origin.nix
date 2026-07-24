{ callPackage, fetchurl }:
let
  version = "1.93.127";
  hash = "16gl97l4vvpnlqq0i3z557vddhri9v8g54gjryyfdnd7fvd3ii25";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
