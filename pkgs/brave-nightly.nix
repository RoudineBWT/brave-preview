{ callPackage, fetchurl }:
let
  version = "1.95.56";
  hash = "1mmxcnhzqzf498y042zsmmdyvvrvmjnp9k6sjd8n4qg5j5r64v05";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
