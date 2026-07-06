{ callPackage, fetchurl }:
let
  version = "1.94.39";
  hash = "1sg3zqbssrdy67lxz85g8l1xav8s3mxyrb0zgs9qklc7ccyn83fk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
