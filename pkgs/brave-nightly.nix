{ callPackage, fetchurl }:
let
  version = "1.102.36";
  hash = "17gd3i69gfjan0df77n3h4r8p7j41bz1rh7s5il1nc5lm511mrk1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
