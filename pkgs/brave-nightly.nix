{ callPackage, fetchurl }:
let
  version = "1.92.39";
  hash = "00fkvrk7cxszr43i2vq8cpwvg4rgic41srqrbs1qjy9wrqgp04jn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
