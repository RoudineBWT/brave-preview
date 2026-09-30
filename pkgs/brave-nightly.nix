{ callPackage, fetchurl }:
let
  version = "1.98.46";
  hash = "0wd6cihl20b4ligrd6ha17v4azid260gjxrn25mhwvdvwnnrb53a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
