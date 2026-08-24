{ callPackage, fetchurl }:
let
  version = "1.94.115";
  hash = "0cp8qb6m8dkjj75jxx4p3nmmwxcw9yd4i6hv6prc9j9g7ky3clbf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
