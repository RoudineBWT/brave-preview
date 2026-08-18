{ callPackage, fetchurl }:
let
  version = "1.95.82";
  hash = "03vaghbdqjf7sp8p12zfz0qdn732kc97vg4yysnjngxcw2ip0m1q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
