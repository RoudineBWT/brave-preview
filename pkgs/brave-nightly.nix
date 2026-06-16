{ callPackage, fetchurl }:
let
  version = "1.93.73";
  hash = "0xxpliv2rn8pzm7h27zwb0hazfffbq5c93x0n56lm6pczdk97v60";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
