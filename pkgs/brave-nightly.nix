{ callPackage, fetchurl }:
let
  version = "1.97.33";
  hash = "0sfzpswr649lfd4dhr1kzjxzfkib333yif3rcqs6s3i1fpwrgx6a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
