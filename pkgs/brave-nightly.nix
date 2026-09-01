{ callPackage, fetchurl }:
let
  version = "1.96.37";
  hash = "188m3qy73c78873j54i648flpsk82dl8akrbg4hmjj1976dnciy0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
