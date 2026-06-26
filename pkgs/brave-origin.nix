{ callPackage, fetchurl }:
let
  version = "1.91.180";
  hash = "0mprxr7a5xfvr89ginh79d3zpzxs6agajfdxdq8by19dba3q0rph";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
