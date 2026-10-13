{ callPackage, fetchurl }:
let
  version = "1.99.39";
  hash = "0cv2f8n9wqpkdsy8lxm0ml33g0j00ihp6p7qszpwa43ipmdgxwr6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
