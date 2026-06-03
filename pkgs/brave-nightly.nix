{ callPackage, fetchurl }:
let
  version = "1.93.26";
  hash = "15ad193jls9hpjd0dr675b9r6if2rx78qslw5g1d5mqyndjqw3zp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
