{ callPackage, fetchurl }:
let
  version = "1.102.18";
  hash = "022gvlyqh1jii0gvqx021jz3gd08q8kpn8nksdghm22scjkfl2z8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
