{ callPackage, fetchurl }:
let
  version = "1.93.35";
  hash = "105k50pjsck13bdcxwaqjljlwa0dbaxh2gp4c92y66jnb08k68md";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
