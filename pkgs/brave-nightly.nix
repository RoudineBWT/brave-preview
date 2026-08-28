{ callPackage, fetchurl }:
let
  version = "1.96.26";
  hash = "0kv27qpymd9pdaqlma10y6n8snrkj9x4wgjr91jp8wchn86gix99";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
