{ callPackage, fetchurl }:
let
  version = "1.95.6";
  hash = "16y320wfv7vmvkd0v7bwk3j8ca4sgcqb3wfswyjrz3v9ajr453ni";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
