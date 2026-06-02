{ callPackage, fetchurl }:
let
  version = "1.91.166";
  hash = "1kq6yp7mqqqkhm3xdn06723c685dvg4hckj2814gvkk9yylqzk8w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
