{ callPackage, fetchurl }:
let
  version = "1.92.74";
  hash = "1fiirf47jl7nhic0jqz28si14i4icc8dlwf7xqvxz3kk9hlgii4d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
