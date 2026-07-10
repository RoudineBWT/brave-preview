{ callPackage, fetchurl }:
let
  version = "1.94.57";
  hash = "0z4dqccns0azwh2vlv0b9iz992w08d352nbs414r6fv0ghiyz6xw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
