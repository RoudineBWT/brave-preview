{ callPackage, fetchurl }:
let
  version = "1.95.62";
  hash = "0l5hicamjpkxd5951sspn27iivw5wharj1y6kybp6gdsdqj51n16";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
