{ callPackage, fetchurl }:
let
  version = "1.92.130";
  hash = "1sd67yigdrpjm6bzigfbib56yfplgvi4ifxf8855457ja970lwx1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
