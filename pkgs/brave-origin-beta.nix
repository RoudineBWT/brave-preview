{ callPackage, fetchurl }:
let
  version = "1.96.52";
  hash = "1nppcm39ikf4xhqa3z4cghrpkmm8cwlirjr8dkmwnyjc2h6vbqsv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
