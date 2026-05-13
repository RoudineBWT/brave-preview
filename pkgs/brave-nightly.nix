{ callPackage, fetchurl }:
let
  version = "1.92.56";
  hash = "0zdpygw65ri6zmj41cb3vc2ir4wkrcnrvyridk0fxng2br4rcgyn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
