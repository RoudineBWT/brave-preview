{ callPackage, fetchurl }:
let
  version = "1.92.10";
  hash = "1qzs0hdqfpy0pm0wbbvc574z1w0d027rsykh27lb7jh9bqpw1y74";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
