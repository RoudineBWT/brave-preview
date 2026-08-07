{ callPackage, fetchurl }:
let
  version = "1.93.134";
  hash = "0cn5dq84xm5j7yg5dzbw4wi9bq6pb62zs9qizmfqbkavhwy8z2r8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
