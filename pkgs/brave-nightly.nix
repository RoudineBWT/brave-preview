{ callPackage, fetchurl }:
let
  version = "1.97.10";
  hash = "04k6mwkrzw1cy1srv12jzbqlqx7dpqd700qjq7ldnhbc1vxd9z52";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
