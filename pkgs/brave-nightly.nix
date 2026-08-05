{ callPackage, fetchurl }:
let
  version = "1.95.41";
  hash = "05jzh73zg2fqblgqa96301crys98d83gaxjbzffwwpdg06v3yss3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
