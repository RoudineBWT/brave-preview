{ callPackage, fetchurl }:
let
  version = "1.101.25";
  hash = "1vaplzi1vb61q8xn3p5vj1swrvz5yp6blr7n05szw99aj1dkdbwv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
