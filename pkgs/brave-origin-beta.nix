{ callPackage, fetchurl }:
let
  version = "1.94.113";
  hash = "1jf4rcqf70bj3a8y546p97jh5s4yvxcbkjyyl97pffjspg9y3qsg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
