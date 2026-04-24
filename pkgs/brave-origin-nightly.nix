{ callPackage, fetchurl }:
let
  version = "1.91.113";
  hash = "1zhphm37j03mh0rzs56rgsh7lfnxx969mi4dz5qhq6ql12xiqyn5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
