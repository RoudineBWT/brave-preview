{ callPackage, fetchurl }:
let
  version = "1.99.43";
  hash = "0651sij27d76lxiqxrhrighxpnbvkr1ywqc2jc01rkxsw234i4hc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
