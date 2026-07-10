{ callPackage, fetchurl }:
let
  version = "1.94.57";
  hash = "0v6hg330z0njnzrhlf1rm7h6xlhhhp5d18r7159rlkj17afb9shc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
