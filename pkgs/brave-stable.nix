{ callPackage, fetchurl }:
let
  version = "1.90.123";
  hash = "0vbfyywg4g0v8n507ccz2vwj9h8m713jy9qj2n45z8l5ywk3wyag";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
