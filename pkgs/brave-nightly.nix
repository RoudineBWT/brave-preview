{ callPackage, fetchurl }:
let
  version = "1.99.29";
  hash = "1c88x5gzy567a8c19ymy1pfa6ddlx2w6qcdajbgl9hm9nw7lsrjv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
