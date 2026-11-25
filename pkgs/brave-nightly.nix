{ callPackage, fetchurl }:
let
  version = "1.102.40";
  hash = "03ljxnmc15zbiaw649js8l801inziwr355myphvizzcr63pqgm6c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
