{ callPackage, fetchurl }:
let
  version = "1.95.58";
  hash = "0qiabrcqdswbjb5rp9a38fbxsfll5140i7yqmbbyrv6hivqv0dwz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
