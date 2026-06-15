{ callPackage, fetchurl }:
let
  version = "1.93.69";
  hash = "1xjgixxq2pf5zwgyd9s8blzzd9v2l2341s4rma64nz81853q2fnp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
