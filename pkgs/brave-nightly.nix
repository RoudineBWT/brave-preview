{ callPackage, fetchurl }:
let
  version = "1.99.10";
  hash = "1ryba2ypr3jdpamx63aglfvhpfzmwyn8hfwf7461m4jdppq07153";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
