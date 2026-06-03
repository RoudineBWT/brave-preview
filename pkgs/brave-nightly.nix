{ callPackage, fetchurl }:
let
  version = "1.93.24";
  hash = "13cwicw631hvyywdxy8771glaxdkb63p8wl4l9fh7hkq8c8z80q6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
