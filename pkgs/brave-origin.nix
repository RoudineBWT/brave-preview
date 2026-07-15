{ callPackage, fetchurl }:
let
  version = "1.92.140";
  hash = "1cyi8fh5h555bjrfn3fhz0kjyfz94r6qw5d4hzqj917lh65xm7i6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
