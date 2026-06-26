{ callPackage, fetchurl }:
let
  version = "1.94.7";
  hash = "0z04zixm2a3m7bw6vgsc7nm3a3wwzahnigrlbsm53n83hmbzfzzq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
