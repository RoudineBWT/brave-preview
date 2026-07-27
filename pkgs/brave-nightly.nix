{ callPackage, fetchurl }:
let
  version = "1.95.10";
  hash = "09h414aahydmnpyrvsy4bbbdgkvw6qsy08mi37bsxcdlqz4cag7p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
