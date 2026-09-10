{ callPackage, fetchurl }:
let
  version = "1.97.24";
  hash = "1kzk0mcij05qz3zcr7dzr1rmbkn46nk0p2kaiz80hzlzqfdk5g1p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
