{ callPackage, fetchurl }:
let
  version = "1.99.33";
  hash = "1ihqddnlq2x9wzv5cl0xr8ijlb2r45mvnjqj1rrz01fr88zy72jd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
