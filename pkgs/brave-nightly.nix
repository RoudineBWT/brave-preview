{ callPackage, fetchurl }:
let
  version = "1.96.41";
  hash = "16k837v3jwc9hx84k08xj4kswzjl20y447fhvsjhay39x73y7n5p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
