{ callPackage, fetchurl }:
let
  version = "1.92.89";
  hash = "0vr1hic1p0a70phbgw4rc4ikyll3jgqnb7s5naifwwf5cc3sqffw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
