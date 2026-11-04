{ callPackage, fetchurl }:
let
  version = "1.101.23";
  hash = "1r4sqx6rgmxg3b8nddcbbgsxawzghws9pi3wnm12a4kh7zkq552y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
