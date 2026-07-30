{ callPackage, fetchurl }:
let
  version = "1.93.129";
  hash = "1xcf6374nnx9gacyl2dycab7izlzglhz2bdqvf5rvdvq9gmpm5qp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
