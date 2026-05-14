{ callPackage, fetchurl }:
let
  version = "1.92.61";
  hash = "02q60cwqggavj1xpd02xy4q05bgh7nzx6sxagakykb1b811qj793";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
