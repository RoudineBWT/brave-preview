{ callPackage, fetchurl }:
let
  version = "1.101.5";
  hash = "0wzv0hdnglil6ikfn57qrd29j7f0xm2kbc89mhjaz4q498v29p00";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
