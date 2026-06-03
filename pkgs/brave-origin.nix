{ callPackage, fetchurl }:
let
  version = "1.91.168";
  hash = "1wv6w1g6asyvqd8kck57bfdiriqi7ja4kk4919kmd2ysgsadrrhb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
