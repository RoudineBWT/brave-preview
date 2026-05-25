{ callPackage, fetchurl }:
let
  version = "1.92.94";
  hash = "0w65m3h8l179d87aszady1ngd7cpfa8aw0k4788xqba5p54bsw8a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
