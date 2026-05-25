{ callPackage, fetchurl }:
let
  version = "1.92.96";
  hash = "1ikyp2909aj0c5ngwrk67kf0hl517g69ri855lhm4ai9b0p23sjd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
