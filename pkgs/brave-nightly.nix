{ callPackage, fetchurl }:
let
  version = "1.96.44";
  hash = "1ji4rhx7yy9v187dvcwpnmfj1wjyljgv9papklgcf4f15n2r89r8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
