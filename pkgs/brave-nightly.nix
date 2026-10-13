{ callPackage, fetchurl }:
let
  version = "1.99.35";
  hash = "18jdnk1lknfvxch408h7a1qqwlhgpq9xz82px8z3vznjlhi771f8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
