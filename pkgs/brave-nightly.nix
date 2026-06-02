{ callPackage, fetchurl }:
let
  version = "1.93.19";
  hash = "1k94y1qdqb433wmikwygssmspvq25fxbs81nfwqxkcq0704wwl9m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
