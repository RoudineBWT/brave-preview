{ callPackage, fetchurl }:
let
  version = "1.91.114";
  hash = "1xbnazfpvf726f4pfgbxzg6ssq70gw9a45vhqpvn23vbcz2q9hph";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
