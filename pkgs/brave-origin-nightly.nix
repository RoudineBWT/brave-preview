{ callPackage, fetchurl }:
let
  version = "1.97.9";
  hash = "0r793g6m6b4bs0zlbqnbgnw6fdssckbzchr6vpqmavkjhxxysl39";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
