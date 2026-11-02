{ callPackage, fetchurl }:
let
  version = "1.101.13";
  hash = "1gr6fmqxjfp8cmkxfh3p4jak71yll00npw2xw8vs7ljylvkjm043";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
