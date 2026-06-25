{ callPackage, fetchurl }:
let
  version = "1.94.2";
  hash = "11d9dhj0l8ba5bmrdary2zqdxwd0rsar64plv1j421pp07l0gqa0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
