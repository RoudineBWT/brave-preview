{ callPackage, fetchurl }:
let
  version = "1.92.72";
  hash = "16cqycsj0kp2lc7p8vz56fpm4c57ydjis26m9rz1y8rjnacc9akw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
