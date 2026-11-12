{ callPackage, fetchurl }:
let
  version = "1.102.2";
  hash = "15244lj9ib9y419dfpjrlvjzaw0cr0vf7rdkl5s46pjy1i03wl7f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
