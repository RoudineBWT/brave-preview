{ callPackage, fetchurl }:
let
  version = "1.93.47";
  hash = "05karfp4m5s8zmjncyh1qw8xbzlm9rla682qrf1cx59z0wzjrx50";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
