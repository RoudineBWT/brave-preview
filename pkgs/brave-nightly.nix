{ callPackage, fetchurl }:
let
  version = "1.98.16";
  hash = "03djx9q4rqzxvbck1wbjl7yy7g17xs9rgjlx08rgymlq3dg77iil";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
