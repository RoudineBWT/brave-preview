{ callPackage, fetchurl }:
let
  version = "1.94.114";
  hash = "1afqz76swv6rfxpk6v0pl0vl791il02j4j7kax5mzljv52ml18hq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
