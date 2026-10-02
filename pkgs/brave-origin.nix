{ callPackage, fetchurl }:
let
  version = "1.96.61";
  hash = "0a58mq3l09ac9vng0hnkky3jzan9433k7gsrzg0mjd4rypa15jrh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
