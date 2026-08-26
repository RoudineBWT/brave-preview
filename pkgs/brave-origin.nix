{ callPackage, fetchurl }:
let
  version = "1.94.117";
  hash = "1rmysma6l287q6z4z8049x1xf2h3hgf8fli5d1jzh1n0g3rpi3f5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
