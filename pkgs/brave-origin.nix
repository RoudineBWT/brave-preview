{ callPackage, fetchurl }:
let
  version = "1.95.100";
  hash = "0k7bq0rghcwsjrpwh3z7qzpxykvp1mk6c4534wb2irbgqj4ayrqn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
