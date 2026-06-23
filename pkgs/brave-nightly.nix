{ callPackage, fetchurl }:
let
  version = "1.93.98";
  hash = "0spl3cxzfdwd14y3x2swdw2yg1mpcvmrbf5z5a32rx41s5fcf1k4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
