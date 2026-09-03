{ callPackage, fetchurl }:
let
  version = "1.97.1";
  hash = "01fgg80xq9lrvcq07p5vgxsiagf1pnalzagwwh4m73jc4n7qxw68";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
