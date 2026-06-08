{ callPackage, fetchurl }:
let
  version = "1.93.39";
  hash = "1c9x04xblnnq9xzsavmblam7ylc305xyqpf1w8rjwa6vavv9pr21";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
