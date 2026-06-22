{ callPackage, fetchurl }:
let
  version = "1.93.90";
  hash = "1nypwfblk952z0xszhp3lxmdkba5y0y7hyxkrxwgjl38cklhhycx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
