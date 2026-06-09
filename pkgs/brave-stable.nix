{ callPackage, fetchurl }:
let
  version = "1.91.171";
  hash = "188421hmdnxnfgvps0myfq52j8nzigp5rx86m8jnas71kk8168vy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
