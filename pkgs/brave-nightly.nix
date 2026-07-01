{ callPackage, fetchurl }:
let
  version = "1.94.23";
  hash = "1ydmd0dfnc3acx38z1ymni69rja720fqhgp253wg5hhgb3s1gpkg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
