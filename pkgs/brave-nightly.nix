{ callPackage, fetchurl }:
let
  version = "1.99.1";
  hash = "1phkxsk80fv8ajfi1s4ss3r25f78syq8mcw0g0200cc0a45b7iz6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
