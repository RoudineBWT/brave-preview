{ callPackage, fetchurl }:
let
  version = "1.93.85";
  hash = "1w2j24r5hqdvk53n6dg85ql9gc8p73gn5bw6dmr2dzhsalk5kgbs";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
