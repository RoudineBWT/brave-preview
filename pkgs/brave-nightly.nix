{ callPackage, fetchurl }:
let
  version = "1.94.77";
  hash = "0rd3vd6kq9649ja8yh9517hvyngmyn94gzcl377zrhgym1a1rp17";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
