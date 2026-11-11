{ callPackage, fetchurl }:
let
  version = "1.101.46";
  hash = "0ncwadmkgnbl5860vgbqcgrf1l3gnirl8sycad2fcag1ksp1491r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
