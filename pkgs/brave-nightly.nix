{ callPackage, fetchurl }:
let
  version = "1.93.45";
  hash = "0wip2757vsdjzxzvh5y1mc5j8kfvbbgs1qz79kdfgs6277x41ngw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
