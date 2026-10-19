{ callPackage, fetchurl }:
let
  version = "1.100.12";
  hash = "0g9rzbmhkcv677byp3j5c68yx6ia0aaym9hf8chgiyswq0pkdz0p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
