{ callPackage, fetchurl }:
let
  version = "1.94.114";
  hash = "0xr7cvnlgymspz8f6kig0kd0swy29h1c5vjd1z7sdi213s6ahav1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
