{ callPackage, fetchurl }:
let
  version = "1.93.8";
  hash = "0plma86xhldz9n496hhiqwdar274sfs02k7p5wbgaghb02zs9msx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
