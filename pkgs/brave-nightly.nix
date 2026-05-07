{ callPackage, fetchurl }:
let
  version = "1.92.34";
  hash = "1xzy08fgp9n0vk2z5fj8wrbblhhb6m8npxp2pk4rdhc7rapw504m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
