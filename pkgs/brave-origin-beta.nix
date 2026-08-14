{ callPackage, fetchurl }:
let
  version = "1.94.110";
  hash = "0nvh2h6hfq69y2iklxnr3pr4mkr068pgdnjf5nhx9fyicslhnbap";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
