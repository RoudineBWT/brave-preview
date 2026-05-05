{ callPackage, fetchurl }:
let
  version = "1.92.21";
  hash = "0r81a68r88nsanddcyybn5c8nap4xxjw1dkkhy6x7k0i39f3lxmf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
