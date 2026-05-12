{ callPackage, fetchurl }:
let
  version = "1.92.50";
  hash = "0irdjza7f1s3z916dlp5zywj4agyfm31jbhrr3mzl963rn0ih0l7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
