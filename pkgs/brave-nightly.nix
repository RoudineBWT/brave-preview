{ callPackage, fetchurl }:
let
  version = "1.98.30";
  hash = "0v73p13jspiyp89y100f68p67h63bai8z1c1qn42i3719z5y8v3w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
