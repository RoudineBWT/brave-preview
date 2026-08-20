{ callPackage, fetchurl }:
let
  version = "1.96.4";
  hash = "0rp0nyzrm76qvb0q006ljn8yd9bkgdsxadklsaaq3yg7icn5z0a2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
