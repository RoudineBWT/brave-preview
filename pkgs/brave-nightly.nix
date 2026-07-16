{ callPackage, fetchurl }:
let
  version = "1.94.75";
  hash = "0jy4j555xiwzii4qi17fafyx9alcsqgj3z8nrcypi9cgw9hfg8qj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
