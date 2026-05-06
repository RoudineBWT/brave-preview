{ callPackage, fetchurl }:
let
  version = "1.91.140";
  hash = "13h6897mg1vpxg8zdsyfmipggyj4ryzjndd4mcxczdd59859w0jm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
