{ callPackage, fetchurl }:
let
  version = "1.102.33";
  hash = "1cmpx3za4fw8v3x6pfk7lj5v4bxnnz20rhr3hrwjjxf7bk586xai";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
