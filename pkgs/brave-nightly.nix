{ callPackage, fetchurl }:
let
  version = "1.93.67";
  hash = "0h4riyq16g1cmyqavpw0dp7bvmm1vi152q17lgy3xkv8zwigdis0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
