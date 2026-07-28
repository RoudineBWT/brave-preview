{ callPackage, fetchurl }:
let
  version = "1.95.14";
  hash = "0zw1glbk79jn8i14721kzqb7q1p4bcgb276d50q7pkl9sz7mrzsf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
