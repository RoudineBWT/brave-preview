{ callPackage, fetchurl }:
let
  version = "1.96.12";
  hash = "0m5ry957xfazjwxkf0ysn31xyjxlk8p0af8y70x680v6wcsdaq1g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
