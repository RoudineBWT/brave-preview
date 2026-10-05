{ callPackage, fetchurl }:
let
  version = "1.99.12";
  hash = "18kfj9ay5f9nir45kav7gixpn4p1q2ip62zy94ww4097w7qf7b5w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
