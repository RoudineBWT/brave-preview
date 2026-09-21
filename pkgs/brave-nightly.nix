{ callPackage, fetchurl }:
let
  version = "1.98.13";
  hash = "0cnnxk5ccc3ivxizzm2nc5k7whxn0hmf5zklvx521szs2m2y59g7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
