{ callPackage, fetchurl }:
let
  version = "1.100.48";
  hash = "0m9nl2lrawlgm8yl03br16mjzchbib0yv6cnb8psfw81zrcdgd0s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
