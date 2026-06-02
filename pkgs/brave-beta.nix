{ callPackage, fetchurl }:
let
  version = "1.92.112";
  hash = "163pmifjzmni7ifkcr8yi4nf1p0y721zyfza7vqhw2wzmjhjl0zf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
