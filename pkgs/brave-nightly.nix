{ callPackage, fetchurl }:
let
  version = "1.102.24";
  hash = "1cm9iy48bpgn4m5mgphqqm62hpw0jq1raialiqwp70pfs4daiv9y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
