{ callPackage, fetchurl }:
let
  version = "1.93.132";
  hash = "0a7806nq3xk6k9llsbs0sjb0yksxbkc1jw88i2ysq0bq9zpmqyp7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
