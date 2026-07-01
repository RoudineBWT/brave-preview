{ callPackage, fetchurl }:
let
  version = "1.94.19";
  hash = "08sbkyz8a3z8yn9ylqfr3j40mdy09lp0mq2fkx98vxvnwizxak05";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
