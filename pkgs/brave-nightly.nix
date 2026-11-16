{ callPackage, fetchurl }:
let
  version = "1.102.10";
  hash = "1z5p0df8rss6j6j18my1fq6hpc3lnwlcf0wwwk03bcjffcs8hwfb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
