{ callPackage, fetchurl }:
let
  version = "1.94.30";
  hash = "03ap8j89hwqmxzirngfn2vjfw013qrlhrqh14iqw9bfrm6kar936";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
