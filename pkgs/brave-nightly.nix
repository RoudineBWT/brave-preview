{ callPackage, fetchurl }:
let
  version = "1.95.23";
  hash = "06f0yms73fnylb1wi2kmvv04cpnb2ih59h7yrzjqabiv4qm0avyz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
