{ callPackage, fetchurl }:
let
  version = "1.95.74";
  hash = "1x2lxixiq4a438qx05xm7a53rp7v9x7343gk1974gsssh39frqsj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
