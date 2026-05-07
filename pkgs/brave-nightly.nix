{ callPackage, fetchurl }:
let
  version = "1.92.36";
  hash = "10mrkyn7a1aq3l3bdkrxm1ng5manl2n0i9xgd5ld4fzcx67x41wb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
