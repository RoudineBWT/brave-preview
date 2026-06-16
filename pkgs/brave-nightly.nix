{ callPackage, fetchurl }:
let
  version = "1.93.71";
  hash = "13kvx82axx46by6ffqy8s6ihq01ljq368kcgpgk51ywhg4n882xf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
