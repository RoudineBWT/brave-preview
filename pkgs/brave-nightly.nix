{ callPackage, fetchurl }:
let
  version = "1.93.93";
  hash = "10yjas1x8ixbik3g7zkwws1pg5nxgsb3lsfjv6701nv9lcp1mx4x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
