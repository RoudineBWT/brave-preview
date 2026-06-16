{ callPackage, fetchurl }:
let
  version = "1.91.173";
  hash = "1fwrwpl8djdscgki2dcrxzrx2c3mh4xxvpa2azr5wkbk7a0jspnx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
