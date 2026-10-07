{ callPackage, fetchurl }:
let
  version = "1.99.19";
  hash = "153yb0bxkdwyza5xikjbzd44hzshr9ps4kllf0zj8x8jqjvgl2nq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
