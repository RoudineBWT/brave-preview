{ callPackage, fetchurl }:
let
  version = "1.92.46";
  hash = "1r6xwcdy56j5fq395yg9pr1dihabjwqminq9j52lbkym9afw95n1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
