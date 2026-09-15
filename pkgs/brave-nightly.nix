{ callPackage, fetchurl }:
let
  version = "1.97.37";
  hash = "1rc7ilrscmddbxakhkx7vc056xpn0ikz8z3fy0xczv9vrpzlrmwx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
