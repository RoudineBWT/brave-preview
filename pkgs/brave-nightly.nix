{ callPackage, fetchurl }:
let
  version = "1.100.43";
  hash = "1znicz3zq7f4zczcnk8zkbbwc0aa2dh1mj69gqqdf2cpbkkg1lni";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
