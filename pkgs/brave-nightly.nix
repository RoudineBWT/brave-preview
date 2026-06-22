{ callPackage, fetchurl }:
let
  version = "1.93.91";
  hash = "131mpai8am3fa92wvp1yh5gxzhhi7gp22yyjcbg4p15h5ix9nbs4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
