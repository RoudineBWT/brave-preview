{ callPackage, fetchurl }:
let
  version = "1.99.4";
  hash = "1jlbbjms6bpk9a8kw7dv3icjvqw0bi4dl7zkxzfv7x9f5cpr6sir";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
