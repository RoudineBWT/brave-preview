{ callPackage, fetchurl }:
let
  version = "1.96.59";
  hash = "07jzy6q6n8mwlcz8f9av0z1qg2rc34ypf09gkq1b4w3nj332jldh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
