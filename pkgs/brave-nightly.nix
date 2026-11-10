{ callPackage, fetchurl }:
let
  version = "1.101.40";
  hash = "1fg9iaxixwzmm39b7z4fjnghl188ajca4a6gicv1dgddbzxvcrhh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
