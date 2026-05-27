{ callPackage, fetchurl }:
let
  version = "1.93.1";
  hash = "1yf9w8j35yi9p7qy3mx052q1dn9zv2ccdzzy7b0l6lpr4rhqibfg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
