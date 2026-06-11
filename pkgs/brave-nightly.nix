{ callPackage, fetchurl }:
let
  version = "1.93.58";
  hash = "0i7l62hbg467a75h71hxfy45ys5f516j3zbsv45grmxq6winlx1q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
