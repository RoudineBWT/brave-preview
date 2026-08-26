{ callPackage, fetchurl }:
let
  version = "1.96.21";
  hash = "1wnjjv5bh0kwnzr5l4qss6smd2xljh5sdlh0qg0daabyw7v5r20c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
