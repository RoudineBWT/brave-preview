{ callPackage, fetchurl }:
let
  version = "1.98.20";
  hash = "0wpy22ygfqj2vr6zpjaqbp0jj7c3b13y1ggh07bgwjwapc5xn762";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
