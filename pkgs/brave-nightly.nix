{ callPackage, fetchurl }:
let
  version = "1.102.9";
  hash = "14qqy75cjgm5dd550jw579yz0iaf4glz0nzilfxkpcpqizmq45im";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
