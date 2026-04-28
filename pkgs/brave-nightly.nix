{ callPackage, fetchurl }:
let
  version = "1.91.123";
  hash = "0z3mr6q4j47y7r972zr44khs26sg9ri0dl3iah8ilhycdx9p5pz4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
