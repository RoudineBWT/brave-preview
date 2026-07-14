{ callPackage, fetchurl }:
let
  version = "1.93.118";
  hash = "0qzl1ayjsvpg0ls1kgpiqgfjksx8rr2n9x7zssai0f16kkzszfd5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
