{ callPackage, fetchurl }:
let
  version = "1.92.139";
  hash = "0kd2i4y8d7rg87krb2ns3857qdzzy4xvhfbr6p8n0n6gkg01msqc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
