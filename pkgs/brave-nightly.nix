{ callPackage, fetchurl }:
let
  version = "1.92.6";
  hash = "1lwplk2yi2v8px263rnxz8x2aw4lj3c2hg19lzg0c7ap01cgaghq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
