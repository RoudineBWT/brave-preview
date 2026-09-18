{ callPackage, fetchurl }:
let
  version = "1.98.9";
  hash = "1skxx5knc0d8ypqlgknrhq8s3yqmq8aia70hhp2rrvvics5y9x2g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
