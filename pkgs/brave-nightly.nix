{ callPackage, fetchurl }:
let
  version = "1.99.14";
  hash = "1ccjsvxlbcszpkznw7xakmnbgj8g0wy4gzhqcy8kf4rns59yp235";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
