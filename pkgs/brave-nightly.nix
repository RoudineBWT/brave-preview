{ callPackage, fetchurl }:
let
  version = "1.92.98";
  hash = "1852vdkvjy8cgb67kaf7dbbrnglc4sc7xj5q1csg2slp2i46h43i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
