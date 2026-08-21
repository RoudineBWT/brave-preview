{ callPackage, fetchurl }:
let
  version = "1.95.88";
  hash = "1mw8ja4z0ps03w8mk4wj0vsb1f58ffv9k5dwds6ssjr6d0xqzqf4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
