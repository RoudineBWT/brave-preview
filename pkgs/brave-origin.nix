{ callPackage, fetchurl }:
let
  version = "1.98.62";
  hash = "0aqjgjfzxvlb6psw7i8w82gp025006nzgjzcs3dp7c0x2z70l91f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
