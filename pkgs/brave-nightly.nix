{ callPackage, fetchurl }:
let
  version = "1.96.19";
  hash = "02vfjgisjycnz2d6cpqgqdln7ammxz50q1gqpr3hbj809hvgzd3j";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
