{ callPackage, fetchurl }:
let
  version = "1.98.58";
  hash = "1g7h0jpi2a4068rnbca0f0bahd9rcbq9ppcinkvmbsw74x1pbgab";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
