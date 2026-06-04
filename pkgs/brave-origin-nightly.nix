{ callPackage, fetchurl }:
let
  version = "1.93.30";
  hash = "0ysfrfjrqkzixzcjv5wasfgfrm8d4pwwfwxlkisc7v3mwlyf6kx0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
