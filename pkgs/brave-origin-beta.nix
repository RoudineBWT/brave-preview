{ callPackage, fetchurl }:
let
  version = "1.96.53";
  hash = "08m6var8c56mm33fppbjw8m0zm34pms4mgqcis9qdpfrn1gzy4aa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
