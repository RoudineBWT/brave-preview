{ callPackage, fetchurl }:
let
  version = "1.93.10";
  hash = "11qbgy7qrzllvr4wrm2m4k5pd6s9hlcaxflyz6jvdwrc2iqnwbpy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
