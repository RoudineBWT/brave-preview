{ callPackage, fetchurl }:
let
  version = "1.95.37";
  hash = "0rkchyn67kwwkx0q4vyc869izjvkn5gcl5zqm85m806yrrccdl0w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
