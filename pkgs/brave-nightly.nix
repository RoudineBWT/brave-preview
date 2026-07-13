{ callPackage, fetchurl }:
let
  version = "1.94.62";
  hash = "0m6dwqaqsa2ckdhqvkcr1d30dvk45mj7vnrf0zlcz2wkh41wlpkg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
