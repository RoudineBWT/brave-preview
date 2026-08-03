{ callPackage, fetchurl }:
let
  version = "1.95.33";
  hash = "1gjb3y6v0ccpzb7k0dz8nlcf3kvd9f0v05m6lx16gsh89v38b07j";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
