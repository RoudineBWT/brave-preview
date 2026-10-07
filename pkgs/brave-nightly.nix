{ callPackage, fetchurl }:
let
  version = "1.99.23";
  hash = "0gh5cfqky4mmx2ziyhvbf0cp97bf7gm2ic7w4zh25j0vmb9dprji";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
