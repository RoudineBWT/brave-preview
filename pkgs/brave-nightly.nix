{ callPackage, fetchurl }:
let
  version = "1.94.20";
  hash = "0hs0w1l2ywwcscz8plypw5k0zah5gpj1k140mir61hqhnjwb2yb6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
