{ callPackage, fetchurl }:
let
  version = "1.92.48";
  hash = "0i4f0dzz52sxq9324lb4vqcivrnhazi48h7s7flpk7jc5715gb3a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
