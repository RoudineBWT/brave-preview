{ callPackage, fetchurl }:
let
  version = "1.91.168";
  hash = "1mrnlf7wc8hcrsbv8v6fn31qf5ipfkh4688xxqhwixfc20gb85g7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
