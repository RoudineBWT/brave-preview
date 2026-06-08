{ callPackage, fetchurl }:
let
  version = "1.93.41";
  hash = "06sq6xzpjvpfn54gzm82qypqzzmgyasp5nj2ff0mr7k68ra7250p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
