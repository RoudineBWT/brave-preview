{ callPackage, fetchurl }:
let
  version = "1.96.42";
  hash = "1hkkxq4hd52ifdwlkfd7jk6wvw36d24z4ylxivrlc4390kskaq3z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
