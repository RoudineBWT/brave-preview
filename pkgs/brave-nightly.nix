{ callPackage, fetchurl }:
let
  version = "1.98.34";
  hash = "10bcpr26p4jifwmjkfrzvz8hmvc94ldvqlpls4qd4vwlvcdnq38g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
