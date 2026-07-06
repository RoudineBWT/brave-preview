{ callPackage, fetchurl }:
let
  version = "1.93.112";
  hash = "1qq09cdc40l7nhgddjzlxgfdh38hd19alfrpfcmd24kd8q17ydip";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
