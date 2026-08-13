{ callPackage, fetchurl }:
let
  version = "1.95.69";
  hash = "186w66zj0ck9d25zykab5a99kx89nyldf3ak6pagdgzbx8m9skpi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
