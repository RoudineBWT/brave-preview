{ callPackage, fetchurl }:
let
  version = "1.92.84";
  hash = "0c6qnk4jhkl08xdddxdx14i8v4l0rh2f1pynl6bdpz47h6khw0jb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
