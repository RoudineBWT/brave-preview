{ callPackage, fetchurl }:
let
  version = "1.92.120";
  hash = "0c529jlxhwdflfybyxrcfnaf3yqq41gvkdlrayfn6jppnqvhshfc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
