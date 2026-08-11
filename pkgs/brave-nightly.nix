{ callPackage, fetchurl }:
let
  version = "1.95.60";
  hash = "1avsiwgyjvdklfiy8q7scgv3i0frcqrpymv3ffysw0vkblsp5ria";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
