{ callPackage, fetchurl }:
let
  version = "1.92.76";
  hash = "0c7z6w571r5x1y96rmq7xkkqk0h181k56hkwp9qg9gkiqkf3yzq6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
