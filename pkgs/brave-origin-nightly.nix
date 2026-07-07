{ callPackage, fetchurl }:
let
  version = "1.94.43";
  hash = "1la1xdzfvn13p016mvqan2v9b533n9gw9zp20k9irmqnmsmz9dds";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
