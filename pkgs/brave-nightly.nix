{ callPackage, fetchurl }:
let
  version = "1.92.2";
  hash = "0b2vhns3hrbhvkcavpwjv6aldnlngz6k307q19j783fp60rq5mkz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
