{ callPackage, fetchurl }:
let
  version = "1.92.81";
  hash = "0bh4clq3ds37p6303d2q2s8fnghn1vpsliw7y2xj50xdyxrzf2wc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
