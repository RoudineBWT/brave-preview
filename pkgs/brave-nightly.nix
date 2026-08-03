{ callPackage, fetchurl }:
let
  version = "1.95.35";
  hash = "09mb31b6cxj2yxa5i8dyp5yj4sp9ypxx0s611gs8i1q10n8zdfm5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
