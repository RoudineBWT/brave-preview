{ callPackage, fetchurl }:
let
  version = "1.101.32";
  hash = "15kw9i4s96006g3h00l4cphzv9hpwr2k4x72cga4ry6isfanz63a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
