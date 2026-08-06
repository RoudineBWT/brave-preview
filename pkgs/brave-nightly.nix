{ callPackage, fetchurl }:
let
  version = "1.95.47";
  hash = "046pq9ycx3j09p6bgzzchgpw81jfhxy3s5b8m10n1maa90wr097c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
