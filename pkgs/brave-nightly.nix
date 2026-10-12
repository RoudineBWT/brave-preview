{ callPackage, fetchurl }:
let
  version = "1.99.33";
  hash = "05k1q7v5ps532c7ad2bi5wksphwvd9aj5dajsm7qiqfaq4f7dkqa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
