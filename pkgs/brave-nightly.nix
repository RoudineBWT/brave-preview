{ callPackage, fetchurl }:
let
  version = "1.93.79";
  hash = "022ks9k4hf54mf5yzy3ljwc3f0jb9rhjq7xica09n5rb0m7za1np";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
