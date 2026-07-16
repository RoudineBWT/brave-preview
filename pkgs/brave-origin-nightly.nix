{ callPackage, fetchurl }:
let
  version = "1.94.73";
  hash = "1y2fw7s555qw2yyaw5nxdfph35ax4czad5pbalgpl7pz82h2pp8f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
