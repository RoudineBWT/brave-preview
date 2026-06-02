{ callPackage, fetchurl }:
let
  version = "1.91.167";
  hash = "1zp17jra68vmzfzi905njffni9qmgy2i27qjyzr5ygajpzds56nn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
