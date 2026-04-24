{ callPackage, fetchurl }:
let
  version = "1.91.109";
  hash = "07bqbxc6d9x8bad6kxk6a05mi1pxqwbhxky026yll2zjxd2yi70s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
