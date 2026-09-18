{ callPackage, fetchurl }:
let
  version = "1.95.104";
  hash = "11i83yqlx1awcasl5f2sdrk1nvbq07g2plv2s27a1f0y62rqhspy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
