{ callPackage, fetchurl }:
let
  version = "1.101.2";
  hash = "10r6jmfymynxh1wqmjp9kbvvf63529zyzpw813bgrsnzvj24153n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
