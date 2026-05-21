{ callPackage, fetchurl }:
let
  version = "1.92.87";
  hash = "0kksw7fz12ws243ynh4vdg85pd591v0bgahrfkbxp66a7c8724sq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
