{ callPackage, fetchurl }:
let
  version = "1.92.102";
  hash = "1qny2qh318hyf43crd9cyhn5bl947y01bxsi49bbyj5sv4hvc292";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
