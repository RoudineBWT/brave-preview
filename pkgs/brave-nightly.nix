{ callPackage, fetchurl }:
let
  version = "1.97.12";
  hash = "00xfxiyfbyg75ijf6sr9ql3m9915phbyx4jx65gqqiia5qwfq2l0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
