{ callPackage, fetchurl }:
let
  version = "1.92.96";
  hash = "0hx0zcxgfba855h4fjjnjb1x0p0k1akriwhki46n0kd7ilhfs31l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
