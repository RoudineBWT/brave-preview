{ callPackage, fetchurl }:
let
  version = "1.99.31";
  hash = "1dp8lyi0habzd0w1biiklirpy1liz58gybxhn39b276vj8di4v0r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
