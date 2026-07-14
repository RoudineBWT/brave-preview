{ callPackage, fetchurl }:
let
  version = "1.94.66";
  hash = "1wrv98y20ni3dfvlvn1dy61a5lfdh9b2f01zm26yir5rjl6i0spm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
