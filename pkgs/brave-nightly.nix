{ callPackage, fetchurl }:
let
  version = "1.91.113";
  hash = "0h34ybfyxkvskjgldhqq1qi40jajbf9ikm82gmaxzkwqf88n0ly0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
