{ callPackage, fetchurl }:
let
  version = "1.96.14";
  hash = "0vlfqjxj25cs0s4p4lpwz4smrcgrqycw6ldlnhria852k482vxqx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
