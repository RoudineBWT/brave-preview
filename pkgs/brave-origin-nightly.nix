{ callPackage, fetchurl }:
let
  version = "1.98.17";
  hash = "0fb2zbm0x3q9lpd6cn00sr5bbykgfqwcj0sav0mz26da5nniwmba";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
