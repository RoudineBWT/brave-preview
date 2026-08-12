{ callPackage, fetchurl }:
let
  version = "1.95.65";
  hash = "137cg78y7nk3qsrb4dnzam4injh8a5lw9p9y8l2bpa8q3i52grhr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
