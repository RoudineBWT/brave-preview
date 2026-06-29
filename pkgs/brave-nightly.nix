{ callPackage, fetchurl }:
let
  version = "1.94.14";
  hash = "04b9in6jzxw12xh0n6iq91xk1sr44784i6jgvmgfrx5fchh7scf5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
