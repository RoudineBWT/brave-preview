{ callPackage, fetchurl }:
let
  version = "1.92.100";
  hash = "03y56i3pfz2sdd4kv92pdqxzfqd0in6qw5c1r90lk3l8832r0jbr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
