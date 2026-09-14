{ callPackage, fetchurl }:
let
  version = "1.97.33";
  hash = "0wi6fkfw6vkahd4wmagadijf3s3rsldwbc0dvpxgvvr7fd9kgz9m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
