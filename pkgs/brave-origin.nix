{ callPackage, fetchurl }:
let
  version = "1.91.172";
  hash = "1chjl6qrp8a6rgrkrhii9iznyrvmikq9lpvy3h7nr6bjy9hh20hj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
