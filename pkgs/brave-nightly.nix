{ callPackage, fetchurl }:
let
  version = "1.95.20";
  hash = "16kwibgsiaii57g48n3mmqkh60mxwnbaqz6k1j2dzdqhld9lsmyl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
