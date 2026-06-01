{ callPackage, fetchurl }:
let
  version = "1.93.14";
  hash = "08s1pp7j2jzwv34nmpzxiiv7wzx14kcrvrv7vpmmpwmk1s97d8q8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
