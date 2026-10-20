{ callPackage, fetchurl }:
let
  version = "1.100.17";
  hash = "0qccqji87xx91y1bv241i5kbqjmzl8jl7zzk9rri8r84sxhg29xj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
