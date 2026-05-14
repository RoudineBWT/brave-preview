{ callPackage, fetchurl }:
let
  version = "1.92.59";
  hash = "1asr01zcmalv5dfamnxv4jl3h20y2xk53yq1wvvbcl6pgvhhk9aj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
