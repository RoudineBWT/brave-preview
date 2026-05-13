{ callPackage, fetchurl }:
let
  version = "1.92.58";
  hash = "137q8a1xry460706fwdm4qdd987fckwn675gs7n166zgx45db807";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
