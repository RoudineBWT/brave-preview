{ callPackage, fetchurl }:
let
  version = "1.92.79";
  hash = "0mliy97bqw5hw97srx7b8cyp0g1kk8q6jilh048vcgjw8nqnfzbq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
