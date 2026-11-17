{ callPackage, fetchurl }:
let
  version = "1.102.16";
  hash = "16mkypyqjm5wn6nijf310p54fb23asjb9363mdwkchvjnbz4icx9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
