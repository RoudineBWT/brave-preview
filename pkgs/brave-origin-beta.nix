{ callPackage, fetchurl }:
let
  version = "1.97.45";
  hash = "0vnrs5sypqzswyb623wzq3vwwqri93xxzp3jq5nz1il49jxdndzc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
