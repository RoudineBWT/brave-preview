{ callPackage, fetchurl }:
let
  version = "1.95.39";
  hash = "0fwaay4gi7zbhlibfi0p66d0d1cprwb38sv3g9a5kn7qd31kpcyk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
