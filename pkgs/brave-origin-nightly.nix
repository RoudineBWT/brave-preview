{ callPackage, fetchurl }:
let
  version = "1.102.29";
  hash = "0gbsfjm4av7y9wq3kskf1hq08lrx5kpcka6b6riga2334k7yz09n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
