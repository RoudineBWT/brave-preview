{ callPackage, fetchurl }:
let
  version = "1.97.31";
  hash = "1jq6r7r31b6l86vrsv8k9scnl1y7s7dnc83v8xnqvyin13hn0vrd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
