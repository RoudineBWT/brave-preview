{ callPackage, fetchurl }:
let
  version = "1.100.39";
  hash = "11dvj9s397165yx678bi2ww6zgvcp8mzwxn4w8vd1gif4s0r53k3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
