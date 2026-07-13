{ callPackage, fetchurl }:
let
  version = "1.94.64";
  hash = "074abciyrqysbpd6v8c5ky56y4z5fsr8l2i1waw2sdrmiwhyf9h5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
