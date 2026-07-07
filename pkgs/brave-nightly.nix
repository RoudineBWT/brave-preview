{ callPackage, fetchurl }:
let
  version = "1.94.44";
  hash = "0rfkv4aqsjnk3lchkw6gnvjq39zasp4vjy390d0190v0qfprm4z8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
