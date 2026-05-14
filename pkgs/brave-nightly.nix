{ callPackage, fetchurl }:
let
  version = "1.92.63";
  hash = "19c3nqqn3mac6iv42jgxw4215j8aiiw93w8a8qnc91wgxr1bckha";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
