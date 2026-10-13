{ callPackage, fetchurl }:
let
  version = "1.99.36";
  hash = "1pbpl7cqfpqhyv5023f7nlxzkq6nsgbs494agpj3a01rb35rrcdq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
