{ callPackage, fetchurl }:
let
  version = "1.93.138";
  hash = "09g48swjliyvzss8l461f1qy6kryzzrvmfy7h3ipgzr6drskbch9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
